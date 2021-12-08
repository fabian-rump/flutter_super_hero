import 'package:database/model/comic.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_super_hero/super_hero_details/comic_item_widget.dart';

class SuperHeroComicsFetchedWidget extends StatelessWidget {
  final List<Comic> _comics;

  const SuperHeroComicsFetchedWidget(this._comics);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: _comics.length,
        itemBuilder: (context, index) {
          return ComicItemWidget(_comics[index]);
        });
  }
}
