import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_packages/i_packages.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:simple_quran/features/about/about.dart';

part 'about_state.dart';
part 'about_cubit.freezed.dart';

class AboutCubit extends Cubit<AboutState> {
  AboutCubit() : super(const AboutState.initial());

  void getAppInfo() async {
    emit(const AboutState.loading());

    await 1.seconds;

    final result = await AboutUseCases.getAppInfo();

    result.fold(
      (l) => emit(AboutState.error(l.message)),
      (r) => emit(AboutState.loaded(r)),
    );
  }
}
