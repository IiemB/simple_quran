import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_packages/i_packages.dart';
import 'package:simple_quran/features/quran/quran.dart';
import 'package:simple_quran/features/settings/settings.dart';

class SettingsDialogue extends StatelessWidget {
  const SettingsDialogue({super.key});

  @override
  Widget build(BuildContext context) {
    return IBaseSheet(
      isDraggable: false,
      content: [
        BlocBuilder<SettingsCubit, SettingsModel>(
          buildWhen: (previous, current) =>
              previous.textSize != current.textSize,
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
          children: QuranEdition.values
              .map(
                (quranEdition) => BlocBuilder<SettingsCubit, SettingsModel>(
                  buildWhen: (previous, current) =>
                      previous.quranEdition != current.quranEdition,
                  builder: (context, state) {
                    final isSelected = state.quranEdition == quranEdition;
                    return OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: isSelected
                            ? context.theme.colorScheme.onPrimary
                            : null,
                        backgroundColor:
                            isSelected ? context.theme.primaryColor : null,
                      ),
                      onPressed: () => BlocProvider.of<SettingsCubit>(context)
                          .updateSettings(
                        state.copyWith(quranEdition: quranEdition),
                      ),
                      child: Text(quranEdition.valueText),
                    );
                  },
                ),
              )
              .toList(),
        ),
        const IGap(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: AppThemes.values
              .map(
                (appThemes) => BlocBuilder<SettingsCubit, SettingsModel>(
                  buildWhen: (previous, current) =>
                      previous.appThemes != current.appThemes,
                  builder: (context, state) {
                    final isSelected = state.appThemes == appThemes;
                    return IconButton(
                      style: IconButton.styleFrom(
                        foregroundColor: isSelected
                            ? context.theme.colorScheme.onPrimary
                            : null,
                        backgroundColor:
                            isSelected ? context.theme.primaryColor : null,
                      ),
                      onPressed: () => BlocProvider.of<SettingsCubit>(context)
                          .updateSettings(
                        state.copyWith(appThemes: appThemes),
                      ),
                      icon: Icon(appThemes.iconData),
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
