part of 'license_cubit.dart';

@freezed
class LicenseState with _$LicenseState {
  const factory LicenseState.initial() = _Initial;
  const factory LicenseState.loading() = _Loading;
  const factory LicenseState.loaded(LicensesDataModel licensesData) = _Loaded;
  const factory LicenseState.error(String msg) = _Error;
}
