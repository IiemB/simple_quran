part of 'chapters_bloc.dart';

@freezed
class ChaptersState with _$ChaptersState {
  const factory ChaptersState.initial() = _Initial;
  const factory ChaptersState.loading() = _Loading;
  const factory ChaptersState.loaded(Chapters data) = _Loaded;
  const factory ChaptersState.error(String msg) = _Error;
}
