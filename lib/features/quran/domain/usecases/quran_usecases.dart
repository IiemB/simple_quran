import 'package:dartz/dartz.dart';
import 'package:simple_quran/common/common.dart';
import 'package:simple_quran/core/core.dart';
import 'package:simple_quran/features/quran/quran.dart';

final _repositories = getIt<QuranRepositories>();

class QuranUsecases {
  const QuranUsecases._();

  static const getQuran = $GetQuran();
}

class $GetQuran {
  const $GetQuran();

  Future<Either<Failure, QuranModel>> call({
    void Function(int, int)? onReceiveProgress,
  }) =>
      _repositories.getQuran(onReceiveProgress: onReceiveProgress);
}
