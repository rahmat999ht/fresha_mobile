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
    return Scaffold(
      appBar: AppBar(
        title: const Text('KategoriScreen'),
      ),
      body: const Center(
        child: Text('KategoriScreen'),
      ),
    );
  }
}
