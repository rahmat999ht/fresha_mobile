import '../core.dart';

class BerandaScreen extends ConsumerWidget {
  static BerandaScreen builder(
    BuildContext context,
    GoRouterState state,
  ) =>
      const BerandaScreen();
  const BerandaScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleMedium = context.textTheme.titleMedium;

    final titleMediumBold = context.titleMediumBold;
    final color = context.colorScheme;
    return Scaffold(
      appBar: appBarBeranda(
        color,
        titleMedium,
        titleMediumBold,
      ),
      body: const Center(
        child: Text('Hello World!'),
      ),
    );
  }

  AppBar appBarBeranda(
      ColorScheme color, TextStyle? titleMedium, TextStyle? titleMediumBold) {
    return AppBar(
      backgroundColor: color.background,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.location_on,
            color: color.onBackground,
          ),
          RichText(
            text: TextSpan(
              text: 'Dikirim ke ',
              style: titleMedium,
              children: <TextSpan>[
                TextSpan(
                  text: 'Pilih Lokasi',
                  style: titleMediumBold,
                ),
              ],
            ),
          )
        ],
      ),
      centerTitle: true,
    );
  }
}
