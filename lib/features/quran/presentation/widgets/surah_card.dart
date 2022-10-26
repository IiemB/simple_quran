import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_quran/core/core.dart';
import 'package:simple_quran/features/quran/quran.dart';
import 'package:simple_quran/utils/utils.dart';

class SurahCard extends StatelessWidget {
  final SurahModel surahModel;
  const SurahCard({super.key, required this.surahModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => context.router.push(SurahRoute(surahModel: surahModel)),
      title: Text(
        surahModel.name,
        textDirection: TextDirection.rtl,
        style: TextStyle(
          fontFamily: FontFamily.isepMisbah,
          fontSize: 24.sp,
        ),
      ),
      leading: Text(
        surahModel.number.toArabicDigits(),
        style: TextStyle(
          fontFamily: FontFamily.isepMisbah,
          fontSize: 24.sp,
        ),
      ),
    );
  }
}
