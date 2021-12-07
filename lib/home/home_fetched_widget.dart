import 'package:database/model/super_hero.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_super_hero/home/home_fetched_item_widget.dart';

class HomeFetchedWidget extends StatelessWidget {
  final List<SuperHero> _superHeroes;

  const HomeFetchedWidget(this._superHeroes);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _superHeroes.length,
        itemBuilder: (context, index) {
          return HomeFetchedItemWidget(_superHeroes[index]);
        });
  }
}
