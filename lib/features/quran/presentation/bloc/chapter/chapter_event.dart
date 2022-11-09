part of 'chapter_bloc.dart';

@freezed
class ChapterEvent with _$ChapterEvent {
  const factory ChapterEvent.getChapter({
    required int id,
    @Default('en') String language,
  }) = _GetChapter;
}
