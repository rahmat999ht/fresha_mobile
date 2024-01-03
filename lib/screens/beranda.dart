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
    final titleMedium = context.textTheme.titleMedium!;
    final titleMediumBold = context.titleMediumBold;
    final color = context.colorScheme;
    final size = context.deviceSize;
    final selectedIndex = ref.watch(selectedIndexSwiperProv);
    final selectedIndexRead = ref.read(selectedIndexSwiperProv.notifier);
    final searchC = TextEditingController();
    final swiperC = SwiperController();
    return Scaffold(
      appBar: appBarBeranda(
        color: color,
        titleMedium: titleMedium,
        titleMediumBold: titleMediumBold,
        searchC: searchC,
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.2,
            child: Swiper(
              autoplay: true,
              itemCount: 8,
              controller: swiperC,
              // indicatorLayout: PageIndicatorLayout.COLOR,
              pagination: const SwiperPagination(),
              itemBuilder: (c, i) {
                return cardSwiper(size);
              },
              onIndexChanged: (i) {
                selectedIndexRead.state = i;
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (c, i) {
                    return Card(
                      color: selectedIndex == i
                          ? color.primary
                          : color.outlineVariant,
                    );
                  },
                ),
              ),
              const Text('Lihat Semua'),
            ],
          )
        ],
      ),
    );
  }

  Card cardSwiper(Size size) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            KeysAssets.sayur,
            width: size.width * 0.3,
          ),
          const Gap(20),
          SvgPicture.asset(
            KeysAssets.fresha,
            width: size.width * 0.4,
          )
        ],
      ),
    );
  }

  AppBar appBarBeranda({
    required ColorScheme color,
    required TextStyle titleMedium,
    required TextStyle titleMediumBold,
    required TextEditingController searchC,
  }) {
    return AppBar(
      backgroundColor: color.background,
      centerTitle: true,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.location_on,
            color: color.onBackground,
          ),
          RichText(
            text: TextSpan(
              text: KeysBeranda.dikirimKe,
              style: titleMedium,
              children: <TextSpan>[
                TextSpan(
                  text: KeysBeranda.pilihLokasi,
                  style: titleMediumBold,
                ),
              ],
            ),
          )
        ],
      ),
      bottom: formSearch(searchC),
    );
  }

  PreferredSize formSearch(TextEditingController searchC) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(50.0),
      child: Row(
        children: [
          const Gap(20),
          Expanded(
            child: TextFormField(
              controller: searchC,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: KeysBeranda.hintCari,
                filled: true,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 0,
                ),
              ),
            ),
          ),
          const Gap(20),
          const Icon(Icons.email_outlined),
          const Gap(20),
        ],
      ),
    );
  }
}
