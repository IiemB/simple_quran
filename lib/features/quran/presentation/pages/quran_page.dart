import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_quran/features/quran/quran.dart';
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
          loaded: (value) => CustomScrollView(
            slivers: [
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
    );
  }
}
