import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_packages/i_packages.dart';
import 'package:simple_quran/core/core.dart';
import 'package:simple_quran/features/quran/quran.dart';
import 'package:simple_quran/features/settings/settings.dart';
import 'package:simple_quran/utils/utils.dart';

class SurahCard extends StatelessWidget {
  final SurahModel surahModel;
  const SurahCard({super.key, required this.surahModel});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsModel>(
      builder: (context, state) => InkWell(
        onTap: () => context.router.push(SurahRoute(surahModel: surahModel)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: BlocBuilder<SettingsCubit, SettingsModel>(
            builder: (context, state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(surahModel.number.toArabicDigits()),
                  Text(
                    surahModel.name,
                    textDirection: TextDirection.rtl,
                  )
                ]
                    .map(
                      (e) => AnimatedDefaultTextStyle(
                        style: TextStyle(
                          height: 2.5,
                          fontFamily: FontFamily.isepMisbah,
                          fontSize: state.textSize.sp,
                          color: context.theme.colorScheme.onBackground,
                        ),
                        duration: const Duration(microseconds: 100),
                        child: e,
                      ),
                    )
                    .toList(),
              );
            },
          ),
        ),
      ),
    );
  }
}
