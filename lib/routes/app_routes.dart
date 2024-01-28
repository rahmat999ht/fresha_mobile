import '../core.dart';

final appRoutes = [
  GoRoute(
    path: RouteLocation.navBar,
    parentNavigatorKey: navigationKey,
    builder: RootNavBarScreen.builder,
  ),
  // GoRoute(
  //   path: RouteLocation.beranda,
  //   parentNavigatorKey: navigationKey,
  //   builder: BerandaScreen.builder,
  // ),
  GoRoute(
    path: RouteLocation.kategori,
    parentNavigatorKey: navigationKey,
    builder: KategoriScreen.builder,
  ),
  // GoRoute(
  //   path: RouteLocation.pesanan,
  //   parentNavigatorKey: navigationKey,
  //   builder: PesananScreen.builder,
  // ),
  // GoRoute(
  //   path: RouteLocation.akun,
  //   parentNavigatorKey: navigationKey,
  //   builder: AkunScreen.builder,
  // ),
  GoRoute(
    path: RouteLocation.pilihlokasi,
    parentNavigatorKey: navigationKey,
    builder: PilihLokasiScreen.builder,
  ),
];
