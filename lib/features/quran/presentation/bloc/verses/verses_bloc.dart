import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_quran/features/quran/quran.dart';

part 'verses_event.dart';
part 'verses_state.dart';
part 'verses_bloc.freezed.dart';

class VersesBloc extends Bloc<VersesEvent, VersesState> {
  VersesBloc() : super(const _Initial()) {
    on<_GetVerses>(_onGetVerses, transformer: droppable());
  }

  void _onGetVerses(
    _GetVerses event,
    Emitter<VersesState> emit,
  ) async {
    emit(const VersesState.loading());

    final result = await QuranUsecases.getVerses(
      chapterNumber: event.chapterNumber,
      edition: event.edition,
      force: event.force,
    );

    result.fold(
      (l) => emit(VersesState.error(l.message)),
      (r) => emit(VersesState.loaded(r)),
    );
  }
}
