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
      bloc: BlocProvider.of<QuranBloc>(context)
        ..add(const QuranEvent.loadQuran()),
      listener: (context, state) => state.mapOrNull<void>(
        loaded: (value) => 2.seconds.whenComplete(
              () => appRoutes.router.pushAndPopUntil(
                const QuranRoute(),
                predicate: (route) => false,
              ),
            ),
      ),
      child: Scaffold(
        body: Center(
          child: Assets.icons.icon.image(
            width: 240,
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: kToolbarHeight,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: BlocBuilder<QuranBloc, QuranState>(
                builder: (context, state) => Column(
                  children: [
                    state.maybeMap(
                      orElse: () => const LinearProgressIndicator(),
                      loading: (value) => LinearProgressIndicator(
                        value: value.progress?.toDouble(),
                      ),
                    ),
                    state.maybeMap(
                      orElse: () => const Text(''),
                      loading: (value) {
                        final progress = value.progress;

                        if (progress == null) {
                          return const Text('');
                        }
                        return Text('Loading data $progress');
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
