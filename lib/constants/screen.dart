

import '../core.dart';

class ScreenConstant {
  static const widgetOptions = [
    NavBarScreen(
      title: KeyNavBar.beranda,
      icon: KeyNavBar.iconBeranda,
      screen: BerandaScreen(),
    ),
    NavBarScreen(
      title: KeyNavBar.kategori,
      icon: KeyNavBar.iconKategori,
      screen: KategoriScreen(),
    ),
    NavBarScreen(
      title: KeyNavBar.pesanan,
      icon: KeyNavBar.iconPesanan,
      screen: PesananScreen(),
    ),
    NavBarScreen(
      title: KeyNavBar.akun,
      icon: KeyNavBar.iconAkun,
      screen: AkunScreen(),
    ),
  ];
}

class NavBarScreen {
  final String title;
  final IconData icon;
  final Widget screen;

  const NavBarScreen({
    required this.title,
    required this.icon,
    required this.screen,
  });
}
