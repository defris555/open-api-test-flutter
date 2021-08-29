import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;
import 'package:get_storage/get_storage.dart';

import 'src/main_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await DotEnv.load(fileName: ".env");
  runApp(MainApp());
}
