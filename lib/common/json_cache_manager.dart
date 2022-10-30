import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

class JsonCacheManager {
  const JsonCacheManager._();

  static Future<Map<String, dynamic>?> getJson(String key) async {
    try {
      final cacheDirectory = await getTemporaryDirectory();

      final jsonCachePath = '${cacheDirectory.path}/$key.json';

      final jsonCacheFile = File(jsonCachePath);

      if (await jsonCacheFile.exists()) {
        final jsonString = await jsonCacheFile.readAsString();

        final jsonData = jsonDecode(jsonString) as Map<String, dynamic>;

        return jsonData;
      }

      return null;
    } catch (e) {
      rethrow;
    }
  }

  static Future<bool> saveJson(String key, Map<String, dynamic> json) async {
    try {
      final cacheDirectory = await getTemporaryDirectory();

      final jsonCachePath = '${cacheDirectory.path}/$key.json';

      final jsonCacheFile = File(jsonCachePath);

      final jsonCachedFile = await jsonCacheFile.writeAsString(
        const JsonEncoder.withIndent('  ').convert(json),
      );

      if (await jsonCachedFile.exists()) {
        return true;
      }

      return false;
    } catch (e) {
      rethrow;
    }
  }
}
