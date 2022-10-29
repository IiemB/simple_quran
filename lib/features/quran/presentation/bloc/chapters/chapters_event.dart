part of 'chapters_bloc.dart';

@freezed
class ChaptersEvent with _$ChaptersEvent {
  const factory ChaptersEvent.getChapters({
    @Default('en') String language,
    @Default(false) bool force,
  }) = _GetChapters;
}
