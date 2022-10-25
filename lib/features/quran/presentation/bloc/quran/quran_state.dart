part of 'quran_bloc.dart';

@freezed
class QuranState with _$QuranState {
  const factory QuranState.initial() = _Initial;
  const factory QuranState.loading({int? progress}) = _Loading;
  const factory QuranState.loaded({required QuranModel quranModel}) = _Loaded;
  const factory QuranState.error(String message) = _Error;
}
