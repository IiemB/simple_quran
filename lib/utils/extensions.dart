import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension NumberConverter on num {
  static const Map<String, String> arabicDigits = <String, String>{
    '0': '\u0660',
    '1': '\u0661',
    '2': '\u0662',
    '3': '\u0663',
    '4': '\u0664',
    '5': '\u0665',
    '6': '\u0666',
    '7': '\u0667',
    '8': '\u0668',
    '9': '\u0669',
  };

  String toArabicDigits() {
    final number = toString();
    final sb = StringBuffer();
    for (var i = 0; i < number.length; i++) {
      sb.write(arabicDigits[number[i]] ?? number[i]);
    }
    return sb.toString();
  }
}

extension CroasterThemeData on ThemeData {
  ThemeData get modified => copyWith(
        textTheme: textTheme.copyWith(
          bodyText2: textTheme.bodyText2?.copyWith(
            fontSize: 14.sp,
          ),
        ),
        listTileTheme: listTileTheme.copyWith(
          iconColor: colorScheme.onBackground,
        ),
        snackBarTheme: snackBarTheme.copyWith(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        appBarTheme: appBarTheme.copyWith(
          centerTitle: true,
          color: scaffoldBackgroundColor.withOpacity(0.8),
          titleTextStyle: textTheme.headline5?.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 24.sp,
          ),
        ),
      );
}
