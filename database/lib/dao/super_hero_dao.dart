import 'package:database/model/super_hero.dart';
import 'package:floor/floor.dart';

@dao
abstract class SuperHeroDao {
  @Query('SELECT * FROM SuperHero')
  Future<List<SuperHero>> findAll();

  @Query('SELECT * FROM SuperHero WHERE id = :id')
  Future<SuperHero?> findById(int id);

  @insert
  Future<void> insertSuperHero(SuperHero superHero);

  @Insert(onConflict: OnConflictStrategy.ignore)
  Future<void> insertAllSuperHeroes(List<SuperHero> superHeroes);
}
