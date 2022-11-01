import 'package:flutter/material.dart';
import 'package:simple_quran/features/settings/settings.dart';
import 'package:simple_quran/utils/utils.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.showBottomSheet(
        builder: (context) => const SettingsDialogue(),
      ),
      icon: const Icon(Icons.tune),
    );
  }
}
