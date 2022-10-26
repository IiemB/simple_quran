import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_quran/features/quran/quran.dart';
import 'package:simple_quran/features/settings/settings.dart';
import 'package:simple_quran/utils/utils.dart';

class QuranPage extends StatelessWidget {
  static const routeName = 'quran';

  const QuranPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<QuranBloc, QuranState>(
        builder: (context, state) => state.maybeMap(
          orElse: () => Center(
            child: Assets.icons.icon.image(
              width: 240,
            ),
          ),
          loaded: (value) => Scrollbar(
            radius: const Radius.circular(4),
            child: CustomScrollView(
              slivers: [
                const SliverAppBar(
                  floating: true,
                  actions: [SettingsButton()],
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) =>
                        SurahCard(surahModel: value.quranModel.surahs[index]),
                    childCount: value.quranModel.surahs.length,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
