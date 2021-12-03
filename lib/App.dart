import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_super_hero/home/HomeWidget.dart';

class SuperHeroWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      title: "Super Hero",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: HomeWidget(),
    );
  }
}
