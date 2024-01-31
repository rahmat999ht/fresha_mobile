import 'dart:io';

import 'package:fresha/core.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

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

  await Supabase.initialize(
    url: dotenv.get(KeysEnpoint.supabaseUrl),
    anonKey: dotenv.get(KeysEnpoint.anonKey),
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
