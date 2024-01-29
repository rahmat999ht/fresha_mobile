import 'dart:io';

import 'package:fresha/core.dart';

Future main() async {
  await dotenv.load(fileName: '.env');

  final hiveService = HiveService();
  await hiveService.hiveInit();
  
  final dio = Dio();
  final httpClient = HttpClient();

  final dioClient = DioClient(
    dio: dio,
    httpClient: httpClient,
    hiveService: hiveService,
  );

  runApp(
    ProviderScope(
      overrides: [
        hiveServiceProvider.overrideWithValue(hiveService),
        dioClientProvider.overrideWithValue(dioClient),
      ],
      child: const FreshaApp(),
    ),
  );
}
