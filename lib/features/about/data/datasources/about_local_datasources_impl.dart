import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:simple_quran/features/about/about.dart';

@LazySingleton(as: AboutLocalDatasources)
class AboutLocalDatasourcesImpl implements AboutLocalDatasources {
  @override
  Future<PackageInfo> getAppInfoFromPlatform() async {
    try {
      final packageInfo = await PackageInfo.fromPlatform();

      return packageInfo;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<LicensesDataModel> getAppLicenses() async {
    try {
      final licenses = await LicenseRegistry.licenses.fold<LicensesDataModel>(
        LicensesDataModel(
          licenses: <LicenseEntry>[],
          packages: <String>[],
          packageLicenseBindings: <String, List<int>>{},
        ),
        (prev, license) => prev..addLicense(license),
      )
        ..sortPackages();

      return licenses;
    } catch (e) {
      rethrow;
    }
  }
}
