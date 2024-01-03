import '../core.dart';

class RootNavBarScreen extends ConsumerWidget {
  static RootNavBarScreen builder(
    BuildContext context,
    GoRouterState state,
  ) =>
      const RootNavBarScreen();
  const RootNavBarScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(selectedIndexNavBarProv);
    final selectedIndexRead = ref.read(selectedIndexNavBarProv.notifier);
    const screen = ScreenConstant.widgetOptions;
    final curentScreen = screen.elementAt(selectedIndex);
    return Scaffold(
      body: Center(child: curentScreen.screen),
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: fab(context),
      bottomNavigationBar:
          bottomNavBar(selectedIndex, selectedIndexRead, context),
    );
  }

  Container fab(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colorScheme.primary,
        borderRadius: BorderRadius.circular(25),
      ),
      height: 50.0,
      width: 50.0,
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(25),
        child: InkWell(
          borderRadius: BorderRadius.circular(30),
          splashColor: Colors.black54,
          child: Icon(
            Icons.shopping_cart_outlined,
            color: context.colorScheme.onSecondary,
          ),
        ),
      ),
    );
  }

  BottomAppBar bottomNavBar(
    int selectedIndex,
    StateController<int> selectedIndexRead,
    BuildContext context,
  ) {
    return BottomAppBar(
      color: context.colorScheme.background,
      child: Row(
        children: [
          const Spacer(),
          ButtonNavBar(
            index: 0,
            selectedIndex: selectedIndex,
            label: KeysNavBar.beranda,
            icon: KeysNavBar.iconBeranda,
            onTap: () => selectedIndexRead.state = 0,
          ),
          const Spacer(),
          ButtonNavBar(
            index: 1,
            selectedIndex: selectedIndex,
            label: KeysNavBar.kategori,
            icon: KeysNavBar.iconKategori,
            onTap: () => selectedIndexRead.state = 1,
          ),
          const Spacer(flex: 4),
          ButtonNavBar(
            index: 2,
            selectedIndex: selectedIndex,
            label: KeysNavBar.pesanan,
            icon: KeysNavBar.iconPesanan,
            onTap: () => selectedIndexRead.state = 2,
          ),
          const Spacer(),
          ButtonNavBar(
            index: 3,
            selectedIndex: selectedIndex,
            label: KeysNavBar.akun,
            icon: KeysNavBar.iconAkun,
            onTap: () => selectedIndexRead.state = 3,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
