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
      content: [
        BlocBuilder<SettingsCubit, SettingsModel>(
          builder: (context, state) => Slider(
            value: state.textSize,
            min: 16,
            max: 50,
            onChanged: (value) => BlocProvider.of<SettingsCubit>(context)
                .updateSettings(state.copyWith(textSize: value)),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: AppThemes.values
              .map(
                (appThemes) => BlocBuilder<SettingsCubit, SettingsModel>(
                  builder: (context, state) {
                    final isSelected = state.appThemes == appThemes;
                    return Card(
                      color: isSelected ? context.theme.primaryColor : null,
                      child: IconButton(
                        onPressed: () => BlocProvider.of<SettingsCubit>(context)
                            .updateSettings(
                          state.copyWith(appThemes: appThemes),
                        ),
                        icon: Icon(appThemes.iconData),
                      ),
                    );
                  },
                ),
              )
              .toList(),
        )
      ],
    );
  }
}
