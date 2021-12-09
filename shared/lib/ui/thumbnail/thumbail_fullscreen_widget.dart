import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared/ui/thumbnail/thumbnail_fullscreen_arguments.dart';

class ThumbnailFullscreenWidget extends StatelessWidget {
  static const routeName = '/thumbnailFullscreen';
  final ThumbnailFullscreenArguments _arguments;

  const ThumbnailFullscreenWidget(this._arguments);

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
            tag: _arguments.heroTag,
            child: Image(
              fit: BoxFit.cover,
              image: NetworkImage(_arguments.url),
            ),
          ),
        ));
  }
}

const HERO_THUMBNAIL = "thumbnailHero";
const COMIC_THUMBNAIL = "thumbnailComic";
