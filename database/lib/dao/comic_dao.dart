import 'package:database/model/comic.dart';
import 'package:floor/floor.dart';

@dao
abstract class ComicDao {
  @Query('SELECT * FROM Comic')
  Stream<List<Comic>> findAll();

  @Query('SELECT * FROM Comic WHERE id = :id')
  Future<Comic?> findById(int id);

  @Query('SELECT * FROM Comic WHERE superHeroId = :id')
  Future<List<Comic>?> findAllBySuperHeroId(String id);

  @insert
  Future<void> insertComic(Comic comic);

  @Insert(onConflict: OnConflictStrategy.ignore)
  Future<void> insertAllComics(List<Comic> comics);
}
