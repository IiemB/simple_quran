import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_quran/common/common.dart';
import 'package:simple_quran/core/core.dart';
import 'package:simple_quran/features/quran/quran.dart';

@LazySingleton(as: QuranRemoteDatasources)
class QuranRemoteDatasourcesImpl implements QuranRemoteDatasources {
  @override
  Future<Chapters> getChapters({
    required String language,
    required bool force,
  }) async {
    try {
      final jsonKey = 'chapters_$language';

      const path = '/chapters';

      final param = {'language': language};

      Future<Chapters> getData() async {
        final resp = await dio.get(
          path,
          queryParameters: param,
        );

        final data = Chapters.fromJson(resp.data);

        return data;
      }

      if (kIsWeb) {
        final data = await getData();

        return data;
      }

      final cachedJsonData = await JsonCacheManager.getJson(jsonKey);

      if (cachedJsonData != null && !force) {
        return Chapters.fromJson(cachedJsonData);
      }

      final data = await getData();

      await JsonCacheManager.saveJson(jsonKey, data.toJson());
      _cacheChapters(data);

      return data;
    } on DioError catch (e) {
      throw Exception(e.message);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Chapter> getChapter({
    required int chapterNumber,
    required String language,
  }) async {
    final jsonKey = 'chapter_$chapterNumber';

    final path = '/chapters/$chapterNumber';

    final param = {'language': language};

    Future<Chapter> getData() async {
      final resp = await dio.get(
        path,
        queryParameters: param,
      );

      final data = Chapter.fromJson(resp.data['chapter']);

      return data;
    }

    if (kIsWeb) {
      final data = await getData();

      return data;
    }

    final cachedJsonData = await JsonCacheManager.getJson(jsonKey);

    if (cachedJsonData != null) {
      return Chapter.fromJson(cachedJsonData);
    }

    final data = await getData();

    await JsonCacheManager.saveJson(jsonKey, data.toJson());

    return data;
  }

  @override
  Future<Verses> getVerses({
    required int chapterNumber,
    required QuranEdition edition,
    required bool force,
  }) async {
    final jsonKey = 'verses_${chapterNumber}_${edition.name}';

    final path = '/quran/verses/${edition.name}';

    final param = {'chapter_number': chapterNumber};

    Future<Verses> getData() async {
      final resp = await dio.get(
        path,
        queryParameters: param,
      );

      final data = Verses.fromJson(resp.data);

      return data;
    }

    if (kIsWeb) {
      final data = await getData();

      return data;
    }

    final cachedJsonData = await JsonCacheManager.getJson(jsonKey);

    if (cachedJsonData != null && !force) {
      return Verses.fromJson(cachedJsonData);
    }

    final data = await getData();

    await JsonCacheManager.saveJson(jsonKey, data.toJson());

    return data;
  }

  Future<void> _cacheChapters(Chapters data) async {
    final chapters = data.chapters;

    if (chapters == null) {
      return;
    }

    for (var chapter in chapters) {
      final id = chapter.id;

      if (id == null) {
        log('chapter id is null');
        break;
      }

      final jsonKey = 'chapter_$id';

      await JsonCacheManager.saveJson(jsonKey, chapter.toJson());

      log('$jsonKey cached');
    }

    log('all chapters cached');
  }
}
