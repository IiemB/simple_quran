import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_quran/features/quran/quran.dart';

part 'chapters_event.dart';
part 'chapters_state.dart';
part 'chapters_bloc.freezed.dart';

class ChaptersBloc extends Bloc<ChaptersEvent, ChaptersState> {
  ChaptersBloc() : super(const _Initial()) {
    on<_GetChapters>(_onGetChapters, transformer: droppable());
  }

  void _onGetChapters(
    _GetChapters event,
    Emitter<ChaptersState> emit,
  ) async {
    emit(const ChaptersState.loading());

    final result = await QuranUsecases.getChapters(
      language: event.language,
      force: event.force,
    );

    result.fold(
      (l) => emit(ChaptersState.error(l.message)),
      (r) => emit(ChaptersState.loaded(r)),
    );
  }
}
