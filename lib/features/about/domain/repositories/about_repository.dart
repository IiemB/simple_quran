import 'package:dartz/dartz.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:simple_quran/common/common.dart';
import 'package:simple_quran/features/about/about.dart';

abstract class AboutRepository {
  Future<Either<Failure, PackageInfo>> getAppInfo();
  Future<Either<Failure, LicensesDataModel>> getLicensesData();
}
