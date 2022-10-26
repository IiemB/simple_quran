import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_packages/i_packages.dart';
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
                style: TextStyle(
                  fontFamily: FontFamily.isepMisbah,
                  fontSize: 26.sp,
                ),
              ),
              actions: const [SettingsButton()],
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: BlocBuilder<SettingsCubit, SettingsModel>(
                  builder: (context, state) {
                    return AnimatedDefaultTextStyle(
                      style: TextStyle(
                        height: 2.5,
                        fontFamily: FontFamily.isepMisbah,
                        fontSize: state.textSize.sp,
                        color: context.theme.colorScheme.onBackground,
                      ),
                      duration: const Duration(microseconds: 100),
                      child: SelectableText(
                        ayahs,
                        textDirection: TextDirection.rtl,
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
