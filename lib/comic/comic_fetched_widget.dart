import 'package:database/model/comic.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared/ui/padding_parent.dart';
import 'package:shared/ui/thumbnail/thumbail_fullscreen_widget.dart';
import 'package:shared/ui/thumbnail/thumbnail_fullscreen_arguments.dart';

class ComicFetchedWidget extends StatelessWidget {
  final Comic _comic;
  final Color _dominantColor;

  const ComicFetchedWidget(this._comic, this._dominantColor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_comic.name),
        backgroundColor: _dominantColor,
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () => _openThumbnailFullscreen(context),
            child: Hero(
              tag: COMIC_THUMBNAIL,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(_comic.thumbnail),
              ),
            ),
          ),
          PaddingParent(Text(
            _comic.name,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ))
        ],
      ),
    );
  }

  _openThumbnailFullscreen(BuildContext context) {
    Navigator.pushNamed(
      context,
      ThumbnailFullscreenWidget.routeName,
      arguments: ThumbnailFullscreenArguments(_comic.thumbnail, COMIC_THUMBNAIL),
    );
  }
}
