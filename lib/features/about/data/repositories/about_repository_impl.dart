import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:simple_quran/common/common.dart';
import 'package:simple_quran/features/about/about.dart';

@LazySingleton(as: AboutRepository)
class AboutRepositoryImpl implements AboutRepository {
  final AboutLocalDatasources _aboutLocalDatasources;

  AboutRepositoryImpl(this._aboutLocalDatasources);

  @override
  Future<Either<Failure, PackageInfo>> getAppInfo() async {
    try {
      final result = await _aboutLocalDatasources.getAppInfoFromPlatform();

      return right(result);
    } catch (e) {
      return Left(Failure(e.toString())..print());
    }
  }

  @override
  Future<Either<Failure, LicensesDataModel>> getLicensesData() async {
    try {
      final result = await _aboutLocalDatasources.getAppLicenses();
      return right(result);
    } catch (e) {
      return left(Failure(e.toString())..print());
    }
  }
}
