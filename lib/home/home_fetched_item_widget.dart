import 'package:database/model/super_hero.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_super_hero/super_hero_details/super_hero_details_arguments.dart';
import 'package:flutter_super_hero/super_hero_details/super_hero_details_widget.dart';

class HomeFetchedItemWidget extends StatelessWidget {
  final SuperHero _superHero;

  const HomeFetchedItemWidget(this._superHero);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(
        children: <Widget>[
          Image(
            fit: BoxFit.cover,
            image: NetworkImage(_superHero.thumbnailLandscape),
            height: MediaQuery.of(context).size.width * 0.6,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            height: MediaQuery.of(context).size.width * 0.6,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.center,
                colors: [
                  Color(0xCC000000),
                  Color(0x00000000),
                ],
              ),
            ),
          ),
          Positioned.fill(
              child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              child: Text(
                _superHero.name,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              padding: EdgeInsets.all(8),
            ),
          ))
        ],
      ),
      onTap: () => _openSuperHeroDetails(context),
    );
  }

  _openSuperHeroDetails(BuildContext context) {
    Navigator.pushNamed(
      context,
      SuperHeroDetailsWidget.routeName,
      arguments: SuperHeroDetailsArguments(_superHero.id),
    );
  }
}
