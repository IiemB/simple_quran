import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_quran/common/common.dart';
import 'package:simple_quran/features/quran/quran.dart';
import 'package:simple_quran/utils/utils.dart';

@LazySingleton(as: QuranRemoteDatasources)
class QuranRemoteDatasourcesImpl implements QuranRemoteDatasources {
  final _dio = Dio(
    BaseOptions(
      baseUrl: QURAN_API_BASE_URL,
      connectTimeout: 600000,
      receiveTimeout: 600000,
    ),
  );

  @override
  Future<QuranModel> getQuran({
    void Function(int, int)? onReceiveProgress,
  }) async {
    try {
      const edition = '/quran-uthmani';

      final quranJsonCache = await jsonCache.value(edition);

      if (quranJsonCache != null) {
        final data = QuranModel.fromJson(quranJsonCache);

        return data;
      }

      final resp = await _dio.get(
        edition,
        onReceiveProgress: onReceiveProgress,
      );

      final data = QuranResponeDataModel.fromJson(resp.data).data;

      if (data == null) {
        throw Exception('Failed to load Quran');
      }

      await jsonCache.refresh(edition, data.toJson());

      return data;
    } on DioError catch (e) {
      throw Exception(e.message);
    } catch (e) {
      rethrow;
    }
  }
}
