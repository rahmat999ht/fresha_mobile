import '../core.dart';

class WelcomeScreen extends StatelessWidget {
  static WelcomeScreen builder(
    BuildContext context,
    GoRouterState state,
  ) =>
      const WelcomeScreen();
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final color = context.colorScheme;
    final size = context.deviceSize;
    final titleMedium = context.textTheme
        .copyWith(
          titleMedium: TextStyle(color: color.background),
        )
        .titleMedium;
    final titleLargeBold = context.textTheme
        .copyWith(
          titleLarge: TextStyle(
            color: color.background,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        )
        .titleLarge;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(KeysAssets.bgWelcome),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Produck Segar',
              style: titleLargeBold,
            ),
            Text(
              'Produck segar dari petani lokal langsung ke tempat anda',
              style: titleMedium,
            ),
            const Gap(40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: context.goSignin,
                  style: OutlinedButton.styleFrom(
                    backgroundColor: color.background,
                  ),
                  child: const Text("Daftar"),
                ),
                const Gap(20),
                ElevatedButton(
                  onPressed: context.goLogin,
                  child: const Text("Masuk"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
