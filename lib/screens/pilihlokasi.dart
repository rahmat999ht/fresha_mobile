import '../core.dart';

class PilihLokasiScreen extends StatelessWidget {
  static PilihLokasiScreen builder(
    BuildContext context,
    GoRouterState state,
  ) =>
      const PilihLokasiScreen();
  const PilihLokasiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('PilihLokasiScreen'),
      ),
      body:const Center(
        child: Text('PilihLokasiScreen'),
      ),
    );
  }
}
