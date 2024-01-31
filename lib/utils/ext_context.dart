import 'package:fresha/core.dart';

extension BuildContextExtentions on BuildContext {
  ThemeData get _theme => Theme.of(this);
  TextTheme get textTheme => _theme.textTheme;
  ColorScheme get colorScheme => _theme.colorScheme;
  Size get deviceSize => MediaQuery.sizeOf(this);

  TextStyle get labelLargeBold =>
      textTheme.labelLarge!.copyWith(fontWeight: FontWeight.bold);
  TextStyle get labelMediumBold =>
      textTheme.labelMedium!.copyWith(fontWeight: FontWeight.bold);
  TextStyle get labelSmallBold =>
      textTheme.labelSmall!.copyWith(fontWeight: FontWeight.bold);

  TextStyle get titleLargeBold =>
      textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold);
  TextStyle get titleMediumBold =>
      textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold);
  TextStyle get titleSmallBold =>
      textTheme.titleSmall!.copyWith(fontWeight: FontWeight.bold);

  void goLogin() {
    push(RouteLocation.login);
  }

  void goSignin() {
    push(RouteLocation.signin);
  }

  void goWelcome() {
    push(RouteLocation.welcome);
  }

  void goPilihLokasi() {
    push(RouteLocation.pilihlokasi);
  }
}
