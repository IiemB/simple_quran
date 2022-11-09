import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_quran/common/failure.dart';
import 'package:simple_quran/features/quran/quran.dart';

@LazySingleton(as: QuranRepositories)
class QuranRepositoriesImpl implements QuranRepositories {
  final QuranRemoteDatasources _quranRemoteDatasources;

  QuranRepositoriesImpl(this._quranRemoteDatasources);

  @override
  Future<Either<Failure, Chapters>> getChapters({
    required String language,
    required bool force,
  }) async {
    try {
      final result = await _quranRemoteDatasources.getChapters(
        language: language,
        force: force,
      );

      return right(result);
    } catch (e) {
      return left(Failure(e.toString())..print());
    }
  }

  @override
  Future<Either<Failure, Chapter>> getChapter({
    required int chapterNumber,
    required String language,
  }) async {
    try {
      final result = await _quranRemoteDatasources.getChapter(
        chapterNumber: chapterNumber,
        language: language,
      );

      return right(result);
    } catch (e) {
      return left(Failure(e.toString())..print());
    }
  }

  @override
  Future<Either<Failure, Verses>> getVerses({
    required int chapterNumber,
    required QuranEdition edition,
    required bool force,
  }) async {
    try {
      final result = await _quranRemoteDatasources.getVerses(
        chapterNumber: chapterNumber,
        edition: edition,
        force: force,
      );

      return right(result);
    } catch (e) {
      return left(Failure(e.toString())..print());
    }
  }
}
