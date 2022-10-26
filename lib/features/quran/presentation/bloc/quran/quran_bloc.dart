import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_quran/features/quran/quran.dart';

part 'quran_event.dart';
part 'quran_state.dart';
part 'quran_bloc.freezed.dart';

class QuranBloc extends Bloc<QuranEvent, QuranState> {
  QuranBloc() : super(const QuranState.initial()) {
    on<_LoadQuran>(_onLoadQuran, transformer: droppable());
  }

  void _onLoadQuran(
    _LoadQuran event,
    Emitter<QuranState> emit,
  ) async {
    emit(const QuranState.loading());

    final result = await QuranUsecases.getQuran(
      onReceiveProgress: (progress) =>
          emit(QuranState.loading(progress: progress)),
    );

    result.fold(
      (l) => emit(QuranState.error(l.message)),
      (r) => emit(QuranState.loaded(quranModel: r)),
    );
  }
}
