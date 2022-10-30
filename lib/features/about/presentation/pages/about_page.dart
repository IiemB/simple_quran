import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_packages/i_packages.dart';
import 'package:simple_quran/core/core.dart';
import 'package:simple_quran/features/about/about.dart';
import 'package:simple_quran/utils/utils.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AboutPage extends StatelessWidget {
  static const routeName = 'about';
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              title: const Text('About'),
              leading: IconButton(
                onPressed: () => context.router.pop(),
                icon: const Icon(Icons.close),
              ),
            ),
            SliverFillRemaining(
              child: Column(
                children: [
                  Assets.icons.icon.image(width: 200),
                  Text(
                    'Simple Quran',
                    style: context.theme.textTheme.headline4,
                  ),
                  BlocBuilder<AboutCubit, AboutState>(
                    builder: (context, state) => state.maybeMap(
                      orElse: () => const SizedBox(),
                      loaded: (value) => Text.rich(
                        TextSpan(
                          text: 'Ver ${value.packageInfo.version}',
                          children: [
                            TextSpan(
                              text: '\nBuild ${value.packageInfo.buildNumber}',
                              style: context.theme.textTheme.bodyText2,
                            ),
                          ],
                        ),
                        style: context.theme.textTheme.headline6,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: context.width / 3,
                    child: OutlinedButton.icon(
                      onPressed: () =>
                          context.router.push(const LicensesRoute()),
                      icon: const Icon(Icons.local_play_outlined),
                      label: const Text('Licenses'),
                    ),
                  ),
                  SizedBox(
                    width: context.width / 3,
                    child: ElevatedButton.icon(
                      onPressed: () => launchUrlString(
                        SOURCE_CODE,
                        mode: LaunchMode.externalApplication,
                      ),
                      icon: const Icon(Icons.code),
                      label: const Text('Source Code'),
                    ),
                  ),
                ]
                    .map(
                      (widget) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: widget,
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
