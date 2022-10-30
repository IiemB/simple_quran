import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:simple_quran/features/about/about.dart';
import 'package:simple_quran/widgets/widgets.dart';

class LicensesDetailPage extends StatelessWidget {
  static const routeName = 'lisenses-detail';

  final String packageName;
  final List<LicenseEntry> licenseEntries;
  const LicensesDetailPage({
    super.key,
    required this.packageName,
    required this.licenseEntries,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              leading: const CustomBackButton(),
              title: Text(packageName),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                licenseEntries
                    .map(
                      (licenseEntry) => ParagraphCard(
                        licenseEntry: licenseEntry,
                        pargraphIndex: licenseEntries
                            .indexWhere((element) => element == licenseEntry),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
