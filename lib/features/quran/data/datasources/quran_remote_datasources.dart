import 'package:simple_quran/features/quran/quran.dart';

abstract class QuranRemoteDatasources {
  Future<Chapters> getChapters({
    required String language,
    required bool force,
  });
  Future<Verses> getVerses({
    required int chapterNumber,
    required QuranEdition edition,
    required bool force,
  });
}
