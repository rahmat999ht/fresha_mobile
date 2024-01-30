import '../core.dart';

class LoginScreen extends StatelessWidget {
  static LoginScreen builder(
    BuildContext context,
    GoRouterState state,
  ) =>
      const LoginScreen();
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginScreen'),
      ),
      body: const Center(
        child: Text('LoginScreen'),
      ),
    );
  }
}
