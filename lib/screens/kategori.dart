import '../core.dart';

class KategoriScreen extends StatelessWidget {
    static KategoriScreen builder(
    BuildContext context,
    GoRouterState state,
  ) =>
      const KategoriScreen();
  const KategoriScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Kategori'),
      ),
    );
  }
}