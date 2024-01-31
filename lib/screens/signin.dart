import '../core.dart';

class SignInScreen extends StatelessWidget {
  static SignInScreen builder(
    BuildContext context,
    GoRouterState state,
  ) =>
      const SignInScreen();
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final color = context.colorScheme;
    final size = context.deviceSize;
    final cFormEmail = TextEditingController();
    final titleMediumBold = context.titleMediumBold;

    final titleLargeBold = context.textTheme
        .copyWith(
          titleLarge: TextStyle(
            color: color.primary,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        )
        .titleLarge;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 240,
            width: size.width,
            alignment: Alignment.topLeft,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(KeysAssets.headerLogin),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_rounded,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Daftar',
                  style: titleLargeBold,
                ),
                Text(
                  'Masukkan Email Anda',
                  style: titleMediumBold,
                ),
                GestureDetector(
                  onTap: () {},
                  child: TextFormField(
                    controller: cFormEmail,
                    readOnly: true,
                    decoration: const InputDecoration(
                      hintText: "Email",
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 0,
                      ),
                    ),
                  ),
                ),
                const Gap(12),
                ElevatedButton(
                  onPressed: context.goLogin,
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(size.width, 40),
                  ),
                  child: const Text("Lanjutkan"),
                ),
                const Gap(12),
                const Stack(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.lock),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: Text(
                        "Data anda sudah dilindungi dan tidak dibagikan. Dengan menggunakan layanan Sayurbox, anda telah menyetujui Syarat dan Ketentuan dan Kebijakan Privasi kami",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
