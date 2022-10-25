import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:simple_quran/common/common.dart';
import 'package:simple_quran/core/core.dart';
import 'package:simple_quran/my_app.dart';
import 'package:i_packages/i_packages.dart';

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  configureDependencies();

  await dotenv.load();

  await getIt<SharedPrefs>().init();

  runApp(const MyApp());

  await 1.seconds.whenComplete(FlutterNativeSplash.remove);
}
