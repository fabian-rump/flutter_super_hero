import 'package:database/dao/comic_dao.dart';
import 'package:database/dao/super_hero_dao.dart';
import 'package:database/super_hero_database.dart';
import 'package:shared/get_it_provider.dart';

Future registerDatabaseModule() async {
  final database = await $FloorSuperHeroDatabase.databaseBuilder("super_heroes.db").build();
  getIt.registerSingleton<SuperHeroDatabase>(database);
  getIt.registerSingleton<SuperHeroDao>(database.superHeroDao);
  getIt.registerSingleton<ComicDao>(database.comicDao);
}
