import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_quran/features/quran/quran.dart';
import 'package:simple_quran/utils/utils.dart';

class AyahCard extends StatelessWidget {
  final AyahModel ayahModel;
  const AyahCard({super.key, required this.ayahModel});

  @override
  Widget build(BuildContext context) {
    var text = ayahModel.text;

    if (ayahModel.numberInSurah == 1 && ayahModel.number != 1) {
      text = text.replaceAll('بِسْمِ ٱللَّهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ', '');
    }

    return Card(
      child: ListTile(
        title: Text(
          '$text ${ayahModel.numberInSurah.toArabicDigits()}',
          textDirection: TextDirection.rtl,
          style: TextStyle(
            fontFamily: FontFamily.isepMisbah,
            fontSize: 24.sp,
          ),
        ),
      ),
    );
  }
}
