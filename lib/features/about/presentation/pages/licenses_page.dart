import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_quran/core/core.dart';
import 'package:simple_quran/features/about/about.dart';
import 'package:simple_quran/widgets/widgets.dart';

class LicensesPage extends StatelessWidget {
  static const routeName = 'lisenses';
  const LicensesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            leading: CustomBackButton(),
            title: Text('License'),
          ),
          BlocBuilder<LicenseCubit, LicenseState>(
            builder: (context, state) => state.maybeMap(
              orElse: () => const SliverFillRemaining(),
              loaded: (value) => SliverList(
                delegate: SliverChildListDelegate(
                  value.licensesData.packages
                      .asMap()
                      .entries
                      .map<Widget>((MapEntry<int, String> entry) {
                    final packageName = entry.value;
                    final bindings =
                        value.licensesData.packageLicenseBindings[packageName]!;

                    return ListTile(
                      title: Text(packageName),
                      subtitle: Text(
                        '${bindings.length} ${bindings.length > 1 ? 'Licenses' : 'License'}',
                      ),
                      onTap: () {
                        final licenseEntries = bindings
                            .map((i) => value.licensesData.licenses[i])
                            .toList();

                        context.router.push(
                          LicensesDetailRoute(
                            packageName: packageName,
                            licenseEntries: licenseEntries,
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
