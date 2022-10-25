import 'package:flutter/material.dart';
import 'package:simple_quran/features/quran/quran.dart';

class SurahPage extends StatelessWidget {
  static const routeName = 'surah';

  final SurahModel surahModel;
  const SurahPage({super.key, required this.surahModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => AyahCard(ayahModel: surahModel.ayahs[index]),
              childCount: surahModel.ayahs.length,
            ),
          ),
        ],
      ),
    );
  }
}
