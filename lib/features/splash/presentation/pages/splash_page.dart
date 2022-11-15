import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:simple_quran/features/quran/quran.dart';
import 'package:simple_quran/utils/utils.dart';

class SplashPage extends StatelessWidget {
  static const routeName = '/';
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    3
        .seconds
        .whenComplete(() => context.router.replaceNamed(QuranPage.routeName));

    return Scaffold(
      body: Center(child: Assets.icons.icon.image(width: 240)),
    );
  }
}
