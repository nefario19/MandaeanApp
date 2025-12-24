import 'package:hive/hive.dart';
import 'package:bushido/app/app.logger.dart';

class HiveService {
  final _log = log('HiveService');
  Box<dynamic>? _box;

  Future<void> init() async {
    _box = await Hive.openBox('app_cache');
    _log.i('Hive box opened');
  }

  Future<void> saveUser(Map<String, dynamic> userData) async {
    await _box?.put('currentUser', userData);
    _log.d('User cached: ${userData['email']}');
  }

  Map<String, dynamic>? getUser() {
    final data = _box?.get('currentUser');
    if (data != null) {
      _log.d('User restored: ${data['email']}');
      return Map<String, dynamic>.from(data);
    }
    return null;
  }

  Future<void> clearUser() async {
    await _box?.delete('currentUser');
    _log.d('User cache cleared');
  }
}
