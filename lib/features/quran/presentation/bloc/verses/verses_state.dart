part of 'verses_bloc.dart';

@freezed
class VersesState with _$VersesState {
  const factory VersesState.initial() = _Initial;
  const factory VersesState.loading() = _Loading;
  const factory VersesState.loaded(Verses data) = _Loaded;
  const factory VersesState.error(String msg) = _Error;
}
