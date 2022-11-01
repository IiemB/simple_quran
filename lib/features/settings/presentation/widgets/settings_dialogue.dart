import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_quran/features/quran/quran.dart';
import 'package:simple_quran/features/settings/settings.dart';
import 'package:simple_quran/utils/utils.dart';
import 'package:simple_quran/widgets/widgets.dart';

class SettingsDialogue extends StatelessWidget {
  const SettingsDialogue({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      enableDrag: false,
      onClosing: () {},
      builder: (context) => Container(
        color: context.theme.scaffoldBackgroundColor,
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  width: context.width / 5,
                  height: 8,
                  decoration: BoxDecoration(
                    color:
                        context.theme.colorScheme.onBackground.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              const Gap(dimension: 8),
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
                      (quranEdition) =>
                          BlocBuilder<SettingsCubit, SettingsModel>(
                        buildWhen: (previous, current) =>
                            previous.quranEdition != current.quranEdition,
                        builder: (context, state) {
                          final isSelected = state.quranEdition == quranEdition;
                          return OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              foregroundColor: isSelected
                                  ? context.theme.colorScheme.onPrimary
                                  : null,
                              backgroundColor: isSelected
                                  ? context.theme.primaryColor
                                  : null,
                            ),
                            onPressed: () =>
                                BlocProvider.of<SettingsCubit>(context)
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
              const Gap(),
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
                              backgroundColor: isSelected
                                  ? context.theme.primaryColor
                                  : null,
                            ),
                            onPressed: () =>
                                BlocProvider.of<SettingsCubit>(context)
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
          ),
        ),
      ),
    );
  }
}
