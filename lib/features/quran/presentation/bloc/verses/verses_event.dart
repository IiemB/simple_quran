part of 'verses_bloc.dart';

@freezed
class VersesEvent with _$VersesEvent {
  const factory VersesEvent.getVerses({
    required int chapterNumber,
    @Default(QuranEdition.indopak) QuranEdition edition,
    @Default(false) bool force,
  }) = _GetVerses;
}
