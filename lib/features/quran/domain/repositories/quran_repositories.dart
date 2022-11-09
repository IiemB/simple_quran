import 'package:dartz/dartz.dart';
import 'package:simple_quran/common/common.dart';
import 'package:simple_quran/features/quran/quran.dart';

abstract class QuranRepositories {
  Future<Either<Failure, Chapters>> getChapters({
    required String language,
    required bool force,
  });
  Future<Either<Failure, Chapter>> getChapter({
    required int chapterNumber,
    required String language,
  });
  Future<Either<Failure, Verses>> getVerses({
    required int chapterNumber,
    required QuranEdition edition,
    required bool force,
  });
}
