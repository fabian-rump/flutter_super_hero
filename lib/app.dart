import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_super_hero/comic/comic_arguments.dart';
import 'package:flutter_super_hero/comic/comic_widget.dart';
import 'package:flutter_super_hero/home/home_widget.dart';
import 'package:flutter_super_hero/super_hero_details/super_hero_details_arguments.dart';
import 'package:flutter_super_hero/super_hero_details/super_hero_details_widget.dart';
import 'package:shared/ui/thumbnail/thumbail_fullscreen_widget.dart';
import 'package:shared/ui/thumbnail/thumbnail_fullscreen_arguments.dart';

class SuperHeroWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      title: "Super Hero",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: HomeWidget(),
      routes: {
        SuperHeroDetailsWidget.routeName: (context) =>
            SuperHeroDetailsWidget(ModalRoute.of(context)?.settings.arguments as SuperHeroDetailsArguments),
        ThumbnailFullscreenWidget.routeName: (context) =>
            ThumbnailFullscreenWidget(ModalRoute.of(context)?.settings.arguments as ThumbnailFullscreenArguments),
        ComicWidget.routeName: (context) => ComicWidget(ModalRoute.of(context)?.settings.arguments as ComicArguments)
      },
    );
  }
}
