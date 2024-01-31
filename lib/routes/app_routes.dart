import 'package:fresha/screens/login.dart';
import 'package:fresha/screens/signin.dart';
import 'package:fresha/screens/splash.dart';
import 'package:fresha/screens/welcome.dart';

import '../core.dart';

final appRoutes = [
  GoRoute(
    path: RouteLocation.splash,
    parentNavigatorKey: navigationKey,
    builder: SplashScreen.builder,
  ),
  GoRoute(
    path: RouteLocation.welcome,
    parentNavigatorKey: navigationKey,
    builder: WelcomeScreen.builder,
  ),
  GoRoute(
    path: RouteLocation.login,
    parentNavigatorKey: navigationKey,
    builder: LoginScreen.builder,
  ),
  GoRoute(
    path: RouteLocation.signin,
    parentNavigatorKey: navigationKey,
    builder: SignInScreen.builder,
  ),
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
