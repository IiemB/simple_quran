import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_quran/common/failure.dart';
import 'package:simple_quran/features/quran/quran.dart';

@LazySingleton(as: QuranRepositories)
class QuranRepositoriesImpl implements QuranRepositories {
  final QuranRemoteDatasources _quranRemoteDatasources;

  QuranRepositoriesImpl(this._quranRemoteDatasources);

  @override
  Future<Either<Failure, QuranModel>> getQuran({
    void Function(int, int)? onReceiveProgress,
  }) async {
    try {
      final result = await _quranRemoteDatasources.getQuran(
        onReceiveProgress: onReceiveProgress,
      );

      return right(result);
    } catch (e) {
      return left(Failure(e.toString())..print());
    }
  }
}
