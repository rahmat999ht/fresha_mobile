import 'package:flutter/foundation.dart' show immutable;

@immutable
class RouteLocation {
  const RouteLocation._();

  static String get navBar => '/navBar';
  static String get beranda => '/beranda';
  static String get kategori => '/kategori';
  static String get pesanan => '/pesanan';
  static String get akun => '/akun';
  static String get pilihlokasi => '/pilihlokasi';
}
