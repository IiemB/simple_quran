import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_quran/core/core.dart';
import 'package:simple_quran/features/about/about.dart';
import 'package:simple_quran/utils/utils.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AboutDrawer extends StatelessWidget {
  const AboutDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [AboutDrawerRoute()],
      builder: (context, child, animation) => Drawer(
        width: context.width / 1.1,
        child: child,
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  static const routeName = 'about';
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                ...[
                  OutlinedButton.icon(
                    onPressed: () => context.router.push(const LicensesRoute()),
                    icon: const Icon(Icons.local_play_outlined),
                    label: const Text('Licenses'),
                  ),
                  ElevatedButton.icon(
                    onPressed: () => launchUrlString(
                      SOURCE_CODE,
                      mode: LaunchMode.externalApplication,
                    ),
                    icon: const Icon(Icons.code),
                    label: const Text(
                      'Source Code',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ].map(
                  (e) => ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: context.width / 2,
                      minWidth: context.width / 3,
                    ),
                    child: e,
                  ),
                )
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
    );
  }
}
