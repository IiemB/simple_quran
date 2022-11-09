import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_quran/features/quran/quran.dart';

part 'chapter_event.dart';
part 'chapter_state.dart';
part 'chapter_bloc.freezed.dart';

class ChapterBloc extends Bloc<ChapterEvent, ChapterState> {
  ChapterBloc() : super(const ChapterState.initial()) {
    on<_GetChapter>(_onGetChapter, transformer: droppable());
  }

  void _onGetChapter(
    _GetChapter event,
    Emitter<ChapterState> emit,
  ) async {
    emit(const ChapterState.loading());

    final result = await QuranUsecases.getChapter(
      chapterNumber: event.id,
      language: event.language,
    );

    result.fold(
      (l) => emit(ChapterState.error(l.message)),
      (r) => emit(ChapterState.loaded(r)),
    );
  }
}
