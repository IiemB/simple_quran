import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_quran/features/about/about.dart';

part 'license_state.dart';
part 'license_cubit.freezed.dart';

class LicenseCubit extends Cubit<LicenseState> {
  LicenseCubit() : super(const LicenseState.initial());

  void getLicense() async {
    emit(const LicenseState.loading());

    final result = await AboutUseCases.getLicensesData();

    result.fold(
      (l) => emit(LicenseState.error(l.message)),
      (r) => emit(LicenseState.loaded(r)),
    );
  }
}
