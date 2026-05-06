import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences prefs;

  static initCacheHelper() async {
    prefs = await SharedPreferences.getInstance();
  }

  static const FlutterSecureStorage _secureStorage = FlutterSecureStorage(
    aOptions: AndroidOptions(encryptedSharedPreferences: true),
    iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock),
  );

  // ===== Secure Storage =====
  static Future<void> saveToken(String token) async {
    await _secureStorage.write(key: MyCashKey.token.name, value: token);
    _cachedToken = token;
  }

  static String? _cachedToken;

  static String? get cachedToken => _cachedToken;

  static Future<String?> getToken() async {
    _cachedToken = await _secureStorage.read(key: MyCashKey.token.name);
    return _cachedToken;
  }

  static Future<void> clearToken() async {
    await _secureStorage.delete(key: MyCashKey.token.name);
  }



  // static Future<void> saveUser(AuthUser? user) async {
  //   final jsonString = jsonEncode(user?.toJson());
  //   await prefs.setString(MyCashKey.user.name, jsonString);
  // }
  //
  // static AuthUser? get getUser {
  //   final jsonString = prefs.getString(MyCashKey.user.name);
  //   if (jsonString == null|| jsonString == "null") return null;
  //   final Map<String, dynamic> jsonMap = jsonDecode(jsonString);
  //   // print("getter user 2${jsonMap}");
  //   return AuthUser.fromJson(jsonMap);
  // }

  // ===== SharedPreferences =====

  static Future<bool> saveData({
    required MyCashKey key,
    required dynamic value,
  }) async {
    // debugPrint("SharedPrefHelper : setData with key : $key and value : $value");
    if (value is String) {
      return await prefs.setString(key.name, value);
    }
    if (value is int) return await prefs.setInt(key.name, value);
    if (value is bool) return await prefs.setBool(key.name, value);

    return await prefs.setDouble(key.name, value);
  }

  static dynamic getData({required MyCashKey key}) {
    return prefs.get(key.name);
  }
  //clear data
  static Future<bool> clearData(MyCashKey key) async {
    // debugPrint("SharedPrefHelper : clearData with key : $key");
    return await prefs.remove(key.name);
  }

  // ===== Language =====
  static Future<bool> saveLanguage(String languageCode) async {
    // debugPrint("CacheHelper : Saving language : $languageCode");
    return await prefs.setString(MyCashKey.language.name, languageCode);
  }

  static String? getLanguage() {
    final language = prefs.getString(MyCashKey.language.name);
    // debugPrint("CacheHelper : Retrieved language : $language");
    return language;
  }

  // ===== Clear All =====
  static Future<void> clearAll() async {
    await prefs.clear();
    await _secureStorage.deleteAll();
    _cachedToken = null;
  }
}


enum MyCashKey {
  token,
  refreshToken,
  userId,
  isLoggedIn,
  language,
  user
}