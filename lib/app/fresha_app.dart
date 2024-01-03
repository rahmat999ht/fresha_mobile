import 'package:fresha/core.dart';

class FreshaApp extends ConsumerWidget {
  const FreshaApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
     final route = ref.watch(routesProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      routerConfig: route,
    );
  }
}
