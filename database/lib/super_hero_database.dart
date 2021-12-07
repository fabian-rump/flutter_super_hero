import 'dart:async';

import 'package:database/dao/comic_dao.dart';
import 'package:database/dao/super_hero_dao.dart';
import 'package:database/model/comic.dart';
import 'package:database/model/super_hero.dart';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'super_hero_database.g.dart';

@Database(version: 1, entities: [SuperHero, Comic])
abstract class SuperHeroDatabase extends FloorDatabase {
  SuperHeroDao get superHeroDao;

  ComicDao get comicDao;
}
