import 'package:database/dao/comic_dao.dart';
import 'package:database/model/comic.dart';
import 'package:domain/extensions/comic_extensions.dart';
import 'package:network/service/marvel_service.dart';
import 'package:shared/get_it_provider.dart';

class ComicRepository {
  final _marvelService = getIt<MarvelService>();
  final _comicDao = getIt<ComicDao>();

  Future persistComics(String characterId) async {
    final response = await _marvelService.fetchComics(characterId);
    final comics = response.data.results.map((comic) => comic.toPersistenceComic(characterId)).toList();
    _comicDao.insertAllComics(comics);
  }

  Stream<List<Comic>> getComics() => _comicDao.findAll();
}
