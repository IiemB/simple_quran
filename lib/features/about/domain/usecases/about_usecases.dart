import 'package:dartz/dartz.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:simple_quran/common/common.dart';
import 'package:simple_quran/core/core.dart';
import 'package:simple_quran/features/about/about.dart';

final _repository = getIt<AboutRepository>();

class AboutUseCases {
  const AboutUseCases._();
  static const getAppInfo = $GetAppInfo();
  static const getLicensesData = $GetLicensesData();
}

class $GetAppInfo {
  const $GetAppInfo();

  Future<Either<Failure, PackageInfo>> call() => _repository.getAppInfo();
}

class $GetLicensesData {
  const $GetLicensesData();

  Future<Either<Failure, LicensesDataModel>> call() =>
      _repository.getLicensesData();
}
