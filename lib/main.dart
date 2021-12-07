import 'package:database/di/database_module.dart';
import 'package:domain/di/domain_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_super_hero/di/main_module.dart';
import 'package:network/di/network_module.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await registerDatabaseModule();
  registerNetworkModule();
  registerDomainModule();
  registerMainModule();
  runApp(SuperHeroWidget());
}
