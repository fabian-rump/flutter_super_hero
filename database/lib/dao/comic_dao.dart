import 'package:database/model/comic.dart';
import 'package:floor/floor.dart';

@dao
abstract class ComicDao {
  @Query('SELECT * FROM Comic')
  Stream<List<Comic>> findAll();

  @Query('SELECT * FROM Comic WHERE id = :id')
  Stream<Comic?> findById(int id);

  @insert
  Future<void> insertComic(Comic comic);

  @Insert(onConflict: OnConflictStrategy.ignore)
  Future<void> insertAllComics(List<Comic> comics);
}
