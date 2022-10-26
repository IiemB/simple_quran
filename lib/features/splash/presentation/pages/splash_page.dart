import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_packages/i_packages.dart';
import 'package:simple_quran/core/core.dart';
import 'package:simple_quran/features/quran/quran.dart';
import 'package:simple_quran/utils/utils.dart';

class SplashPage extends StatelessWidget {
  static const routeName = '/';
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<QuranBloc, QuranState>(
      listener: (context, state) => state.mapOrNull<void>(
        loaded: (value) => 2.seconds.whenComplete(
              () => context.router.pushAndPopUntil(
                const QuranRoute(),
                predicate: (route) => false,
              ),
            ),
      ),
      child: Scaffold(
        backgroundColor: context.theme.colorScheme.secondary,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            BlocBuilder<QuranBloc, QuranState>(
              buildWhen: (previous, current) => current.maybeMap(
                orElse: () => false,
                loading: (value) => true,
              ),
              builder: (context, state) => state.maybeMap(
                orElse: () => const SizedBox(),
                loading: (value) {
                  final progress = value.progress;

                  if (progress == null) {
                    return const SizedBox();
                  }
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 100),
                    height: context.height * (progress / 100),
                    color: context.theme.scaffoldBackgroundColor,
                  );
                },
              ),
            ),
            Center(
              child: Column(
                children: [
                  const Spacer(),
                  Assets.icons.icon.image(width: 240),
                  const Spacer(),
                  BlocBuilder<QuranBloc, QuranState>(
                    builder: (context, state) => state.maybeMap(
                      orElse: () => const Text(''),
                      error: (value) => Column(
                        children: [
                          const Text('Failed to load data'),
                          const IGap(dimension: 8),
                          OutlinedButton(
                            onPressed: () => BlocProvider.of<QuranBloc>(context)
                                .add(const QuranEvent.loadQuran()),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Text('Retry'),
                            ),
                          ),
                        ],
                      ),
                      loading: (value) {
                        final progress = value.progress;

                        if (progress == null) {
                          return const Text('');
                        }
                        return Text(
                          'Loading data $progress%',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: progress <= 4
                                ? context.theme.colorScheme.onSecondary
                                : null,
                          ),
                        );
                      },
                    ),
                  ),
                  IGap(dimension: context.height * (2 / 100))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
