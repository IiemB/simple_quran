import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:simple_quran/common/common.dart';
import 'package:simple_quran/features/quran/quran.dart';
import 'package:simple_quran/utils/utils.dart';

@LazySingleton(as: QuranRemoteDatasources)
class QuranRemoteDatasourcesImpl implements QuranRemoteDatasources {
  final _dio = Dio(
    BaseOptions(
      baseUrl: QURAN_API_BASE_URL,
      connectTimeout: 600000,
      receiveTimeout: 600000,
    ),
  );

  static const _quranEdition = 'quran-uthmani';

  @override
  Future<QuranModel> getQuran({
    void Function(int progress)? onReceiveProgress,
  }) async {
    try {
      final savedQuranSize = sharedPrefs.getInt(QURAN_SIZE) ?? 4671961;

      var newQuranSize = 0;

      const editionPath = '/$_quranEdition';

      final cacheDirectory = await getTemporaryDirectory();

      final editionJsonCachePath = '${cacheDirectory.path}/$_quranEdition.json';

      final editionJsonCacheFile = File(editionJsonCachePath);

      if (await editionJsonCacheFile.exists()) {
        final quranJsonString = await editionJsonCacheFile.readAsString();

        final quranJson = jsonDecode(quranJsonString) as Map<String, dynamic>;

        final data = QuranModel.fromJson(quranJson);

        final random = Random();

        for (var i = 1; i < 101; i++) {
          await Future.delayed(
            Duration(milliseconds: random.nextInt(90) + 10),
            () => onReceiveProgress?.call(i),
          );
        }

        return data;
      }

      final resp = await _dio.get(
        editionPath,
        onReceiveProgress: (recv, _) {
          final progress = ((recv / savedQuranSize) * 100).toInt();

          newQuranSize = recv;

          onReceiveProgress?.call(progress);
        },
      );

      final data = QuranResponeDataModel.fromJson(resp.data).data;

      if (data == null) {
        throw Exception('Failed to load Quran');
      }

      await sharedPrefs.setInt(QURAN_SIZE, newQuranSize);

      await editionJsonCacheFile.writeAsString(
        const JsonEncoder.withIndent('  ').convert(data.toJson()),
      );

      return data;
    } on DioError catch (e) {
      throw Exception(e.message);
    } catch (e) {
      rethrow;
    }
  }
}
