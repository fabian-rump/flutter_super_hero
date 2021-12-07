import 'package:database/model/super_hero.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeFetchedItemWidget extends StatelessWidget {
  final SuperHero _superHero;

  const HomeFetchedItemWidget(this._superHero);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
