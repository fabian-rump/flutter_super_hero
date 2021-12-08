import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_super_hero/super_hero_details/super_hero_details_thumbnail_fullscreen_arguments.dart';

class SuperHeroDetailsThumbnailFullscreenWidget extends StatelessWidget {
  static const routeName = '/superHeroThumbnailFullscreen';
  final SuperHeroDetailsThumbnailFullscreenArguments _arguments;

  const SuperHeroDetailsThumbnailFullscreenWidget(this._arguments);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.black,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Center(
          child: Hero(
            tag: HERO_THUMBNAIL,
            child: Image(
              fit: BoxFit.cover,
              image: NetworkImage(_arguments.url),
            ),
          ),
        ));
  }
}

const HERO_THUMBNAIL = "thumbnail";