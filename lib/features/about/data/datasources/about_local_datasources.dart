import 'package:package_info_plus/package_info_plus.dart';
import 'package:simple_quran/features/about/about.dart';

abstract class AboutLocalDatasources {
  Future<PackageInfo> getAppInfoFromPlatform();
  Future<LicensesDataModel> getAppLicenses();
}
