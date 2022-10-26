part of 'quran_bloc.dart';

@freezed
class QuranEvent with _$QuranEvent {
  const factory QuranEvent.loadQuran({@Default(0) int delay}) = _LoadQuran;
}
