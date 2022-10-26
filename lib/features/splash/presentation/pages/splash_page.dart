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
    return BlocProvider.value(
      value: BlocProvider.of<QuranBloc>(context)
        ..add(const QuranEvent.loadQuran(delay: 3)),
      child: BlocListener<QuranBloc, QuranState>(
        listener: (context, state) => state.mapOrNull<void>(
          loaded: (value) => 2.seconds.whenComplete(
                () => context.router.pushAndPopUntil(
                  QuranRoute(quranModel: value.quranModel),
                  predicate: (route) => false,
                ),
              ),
        ),
        child: Builder(
          builder: (context) => Scaffold(
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
                      SizedBox(
                        height: kToolbarHeight,
                        child: BlocBuilder<QuranBloc, QuranState>(
                          builder: (context, state) => state.maybeMap(
                            orElse: () => const SizedBox(),
                            error: (value) => Card(
                              color: context.theme.colorScheme.primary,
                              child: IconButton(
                                onPressed: () =>
                                    BlocProvider.of<QuranBloc>(context)
                                        .add(const QuranEvent.loadQuran()),
                                icon: Icon(
                                  Icons.restart_alt_rounded,
                                  color: context.theme.colorScheme.onPrimary,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      IGap(dimension: context.height * (2 / 100))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
