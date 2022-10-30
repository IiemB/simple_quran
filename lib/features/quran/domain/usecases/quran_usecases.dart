import 'package:dartz/dartz.dart';
import 'package:simple_quran/common/common.dart';
import 'package:simple_quran/core/core.dart';
import 'package:simple_quran/features/quran/quran.dart';

final _repositories = getIt<QuranRepositories>();

class QuranUsecases {
  const QuranUsecases._();

  static const getChapters = $GetChapters();
  static const getVerses = $GetVerses();
}

class $GetVerses {
  const $GetVerses();
  Future<Either<Failure, Verses>> call({
    required int chapterNumber,
    required QuranEdition edition,
    required bool force,
  }) =>
      _repositories.getVerses(
        chapterNumber: chapterNumber,
        edition: edition,
        force: force,
      );
}

class $GetChapters {
  const $GetChapters();

  Future<Either<Failure, Chapters>> call({
    required String language,
    required bool force,
  }) =>
      _repositories.getChapters(
        language: language,
        force: force,
      );
}
