import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_quran/features/quran/quran.dart';
import 'package:simple_quran/features/settings/settings.dart';
import 'package:simple_quran/utils/utils.dart';

class SurahPage extends StatelessWidget {
  static const routeName = 'surah';

  final SurahModel surahModel;
  const SurahPage({super.key, required this.surahModel});

  @override
  Widget build(BuildContext context) {
    final ayahs = surahModel.ayahs.map((ayahModel) {
      var text = ayahModel.text;

      if (ayahModel.numberInSurah == 1 && ayahModel.number != 1) {
        if (text.startsWith(BASMALAH)) {
          text = text.replaceAll(BASMALAH, '$BASMALAH\n');
        }
      }

      text = '$text ${ayahModel.numberInSurah.toArabicDigits()}';
      return text;
    }).join(' ');

    return Scaffold(
      body: Scrollbar(
        radius: const Radius.circular(4),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              title: Text(
                surahModel.name,
                textDirection: TextDirection.rtl,
              ),
              actions: const [SettingsButton()],
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SelectableText(
                  ayahs,
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    height: 2.5,
                    fontFamily: FontFamily.isepMisbah,
                    fontSize: 24.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
