import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_quran/features/quran/quran.dart';
import 'package:simple_quran/features/settings/settings.dart';
import 'package:simple_quran/utils/utils.dart';

class QuranPage extends StatelessWidget {
  static const routeName = 'quran';

  final QuranModel quranModel;

  const QuranPage({super.key, required this.quranModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        radius: const Radius.circular(4),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              centerTitle: false,
              title: Text(
                'القرآن الكريم',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontFamily: FontFamily.isepMisbah,
                  fontSize: 26.sp,
                ),
              ),
              actions: const [SettingsButton()],
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) =>
                    SurahCard(surahModel: quranModel.surahs[index]),
                childCount: quranModel.surahs.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
