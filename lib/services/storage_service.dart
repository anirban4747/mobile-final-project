import 'package:shared_preferences/shared_preferences.dart';

class StorageService {

  static Future saveData(String key,String value) async {

    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  static Future<String?> readData(String key) async {

    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }
}