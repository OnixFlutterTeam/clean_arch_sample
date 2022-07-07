import 'package:shared_preferences/shared_preferences.dart';

class PreferencesSource {
  final _cacheWriteTimestampKey = 'cache_write_timestamp';

  Future<bool> saveCacheTimestamp(int timestamp) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.setInt(_cacheWriteTimestampKey, timestamp);
  }

  Future<int> getCacheTimestamp() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_cacheWriteTimestampKey) ?? -1;
  }
}
