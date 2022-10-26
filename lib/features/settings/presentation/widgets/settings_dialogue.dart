import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_packages/i_packages.dart';
import 'package:simple_quran/features/settings/settings.dart';

class SettingsDialogue extends StatelessWidget {
  const SettingsDialogue({super.key});

  @override
  Widget build(BuildContext context) {
    return IBaseSheet(
      isDraggable: false,
      content: AppThemes.values
          .map(
            (appThemes) => Card(
              child: BlocBuilder<SettingsCubit, SettingsModel>(
                builder: (context, state) {
                  return ListTile(
                    selected: state.appThemes == appThemes,
                    selectedTileColor: context.theme.primaryColor,
                    selectedColor: context.theme.colorScheme.onPrimary,
                    onTap: () => BlocProvider.of<SettingsCubit>(context)
                        .updateSettings(state.copyWith(appThemes: appThemes)),
                    title: Text(appThemes.themeName),
                  );
                },
              ),
            ),
          )
          .toList(),
    );
  }
}
