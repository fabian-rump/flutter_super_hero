import 'package:database/dao/super_hero_dao.dart';
import 'package:database/model/super_hero.dart';
import 'package:domain/extensions/character_extensions.dart';
import 'package:network/extensions/character_extensions.dart';
import 'package:network/service/marvel_service.dart';
import 'package:shared/get_it_provider.dart';

class SuperHeroRepository {
  final _marvelService = getIt<MarvelService>();
  final _superHeroDao = getIt<SuperHeroDao>();

  Future persistSuperHeroes() async {
    final response = await _marvelService.fetchCharacters();
    final superHeroes = response.data?.results
            .where((character) => character.filterThumbnail())
            .where((character) => character.filterDescription())
            .map((character) => character.toSuperHero())
            .toList() ??
        [];
    _superHeroDao.insertAllSuperHeroes(superHeroes);
  }

  Future<List<SuperHero>> getSuperHeroes() async => _superHeroDao.findAll();
}
