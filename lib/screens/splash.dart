import '../core.dart';

class SplashScreen extends StatelessWidget {
  static SplashScreen builder(
    BuildContext context,
    GoRouterState state,
  ) =>
      const SplashScreen();
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SplashScreen'),
      ),
      body: const Center(
        child: Text('SplashScreen'),
      ),
    );
  }
}
