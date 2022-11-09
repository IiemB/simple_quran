part of 'chapter_bloc.dart';

@freezed
class ChapterState with _$ChapterState {
  const factory ChapterState.initial() = _Initial;
  const factory ChapterState.loading() = _Loading;
  const factory ChapterState.loaded(Chapter data) = _Loaded;
  const factory ChapterState.error(String msg) = _Error;
}
