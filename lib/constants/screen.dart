

import '../core.dart';

class ScreenConstant {
  static const widgetOptions = [
    NavBarScreen(
      title: KeysNavBar.beranda,
      icon: KeysNavBar.iconBeranda,
      screen: BerandaScreen(),
    ),
    NavBarScreen(
      title: KeysNavBar.kategori,
      icon: KeysNavBar.iconKategori,
      screen: KategoriScreen(),
    ),
    NavBarScreen(
      title: KeysNavBar.pesanan,
      icon: KeysNavBar.iconPesanan,
      screen: PesananScreen(),
    ),
    NavBarScreen(
      title: KeysNavBar.akun,
      icon: KeysNavBar.iconAkun,
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
