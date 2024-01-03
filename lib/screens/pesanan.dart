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
    return const Scaffold(
      body: Center(
        child: Text('Pesanan'),
      ),
    );
  }
}