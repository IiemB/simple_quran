import 'package:simple_quran/features/quran/quran.dart';

abstract class QuranRemoteDatasources {
  Future<QuranModel> getQuran({
    void Function(int progress)? onReceiveProgress,
  });
}
