import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:simple_quran/core/core.dart';
import 'package:simple_quran/features/settings/settings.dart';
import 'package:simple_quran/my_app.dart';
import 'package:i_packages/i_packages.dart';
import 'package:window_size/window_size.dart';

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  configureDependencies();

  await dotenv.load();

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowMaxSize(const Size(1024, 768));
    setWindowMinSize(const Size(512, 384));
  }

  final savedSettings = await SettingsUsecases.loadSettings()
      .then((value) => value.fold((l) => null, (r) => r));

  runApp(MyApp(settings: savedSettings));

  await 1.seconds.whenComplete(FlutterNativeSplash.remove);
}
