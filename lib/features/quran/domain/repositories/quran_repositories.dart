import 'package:dartz/dartz.dart';
import 'package:simple_quran/common/common.dart';
import 'package:simple_quran/features/quran/quran.dart';

abstract class QuranRepositories {
  Future<Either<Failure, QuranModel>> getQuran({
    void Function(int progress)? onReceiveProgress,
  });
}
