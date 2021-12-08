import 'dart:ui';

import 'package:database/model/super_hero.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_super_hero/super_hero_details/comic_item_widget.dart';
import 'package:flutter_super_hero/super_hero_details/super_hero_details_thumbail_fullscreen_widget.dart';
import 'package:flutter_super_hero/super_hero_details/super_hero_details_thumbnail_fullscreen_arguments.dart';
import 'package:shared/ui/padding_parent.dart';

class SuperHeroDetailsFetchedWidget extends StatelessWidget {
  final SuperHero _superHero;
  final Color _dominantColor;

  const SuperHeroDetailsFetchedWidget(this._superHero, this._dominantColor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_superHero.name),
        backgroundColor: _dominantColor,
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            GestureDetector(
              onTap: () => _openThumbnailFullscreen(context),
              child: Hero(
                tag: HERO_THUMBNAIL,
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(_superHero.thumbnailLandscape),
                ),
              ),
            ),
            PaddingParent(Text(
              _superHero.description,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ComicItemWidget();
                }),
          ],
        ),
      ),
    );
  }

  _openThumbnailFullscreen(BuildContext context) {
    Navigator.pushNamed(
      context,
      SuperHeroDetailsThumbnailFullscreenWidget.routeName,
      arguments: SuperHeroDetailsThumbnailFullscreenArguments(_superHero.thumbnailLandscape),
    );
  }
}
