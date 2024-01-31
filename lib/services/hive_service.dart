
import 'dart:convert';
import 'package:fresha/core.dart';

class HiveService {
  Box<String>? _box;

  Future<void> hiveInit() async {
    await Hive.initFlutter();
    //
    _box = _box ?? await Hive.openBox("local storage");
  }

  bool get isFirstInstall {
    final hiveBool = _box?.get(HiveKey.firstInstall);
    return hiveBool != null ? false : true;
  }

  /// Set first install
  void setNotFirstInstall() {
    _box?.put(HiveKey.firstInstall, 'false');
  }

  /// for storing User to app
  Future<void> putUser(ModelProduct product) async {
    final hiveJson = product.toJson();
    final userJson = json.encode(hiveJson);
    await _box?.put(HiveKey.user, userJson);
  }

  /// for delete User to app
  Future<void> deleteUser() async {
    await _box?.delete(HiveKey.user);
  }

  // /// for getting string from box
  // String? get getUserToken {
  //   return _box?.get(HiveKey.userToken);
  // }

  // /// for storing User to app
  // Future<void> putUserToken(String token) async {
  //   await _box?.put(HiveKey.userToken, token);
  // }

  /// for getting string from box
  String? get getEmail {
    return _box?.get(HiveKey.email);
  }

  /// for storing User to app
  Future<void> putEmail(String token) async {
    await _box?.put(HiveKey.email, token);
  }

  /// for delete User to app
  Future<void> deleteEmail() async {
    await _box?.delete(HiveKey.email);
  }

  /// for clearing all data in box
  Future<void> clearAllData() async {
    await _box?.clear();
  }
}

final hiveServiceProvider = Provider<HiveService>(
  (_) {
    throw UnimplementedError("hiveServiceProvider");
  },
);