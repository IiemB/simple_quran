import 'package:flutter/foundation.dart';

class LicensesDataModel {
  String? firstPackage;

  final List<LicenseEntry> licenses;
  final Map<String, List<int>> packageLicenseBindings;
  final List<String> packages;

  LicensesDataModel({
    required this.licenses,
    required this.packageLicenseBindings,
    required this.packages,
  });

  void addLicense(LicenseEntry entry) {
    for (final package in entry.packages) {
      _addPackage(package);
      packageLicenseBindings[package]!.add(licenses.length);
    }
    licenses.add(entry); // Completion of the contract above.
  }

  void _addPackage(String package) {
    String? firstPackage;

    if (!packageLicenseBindings.containsKey(package)) {
      packageLicenseBindings[package] = <int>[];
      firstPackage ??= package;
      packages.add(package);
    }
  }

  void sortPackages([int Function(String a, String b)? compare]) {
    packages.sort(
      compare ??
          (String a, String b) {
            if (a == firstPackage) {
              return -1;
            }
            if (b == firstPackage) {
              return 1;
            }
            return a.toLowerCase().compareTo(b.toLowerCase());
          },
    );
  }
}
