import 'package:database/di/database_module.dart';
import 'package:flutter/material.dart';
import 'package:network/di/network_module.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  registerNetworkModule();
  await registerDatabaseModule();
  runApp(SuperHeroWidget());
}
