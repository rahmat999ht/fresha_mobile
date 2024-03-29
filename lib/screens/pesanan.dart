import '../core.dart';

class PesananScreen extends StatelessWidget {
  static PesananScreen builder(
    BuildContext context,
    GoRouterState state,
  ) =>
      const PesananScreen();
  const PesananScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final color = context.colorScheme;
    final textStyle = context.textTheme;
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            KeysNavBar.pesanan,
            style: textStyle.titleLarge,
          ),
          backgroundColor: color.background,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                child: Text(
                  '${KeysPesanan.diproses} (0)',
                  style: textStyle.bodyLarge,
                ),
              ),
              Tab(
                child: Text(
                  '${KeysPesanan.selesai} (0)',
                  style: textStyle.bodyLarge,
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text("It's cloudy here"),
            ),
            Center(
              child: Text("It's rainy here"),
            ),
          ],
        ),
      ),
    );
  }
}
