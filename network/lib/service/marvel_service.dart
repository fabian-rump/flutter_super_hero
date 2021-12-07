import 'package:network/api/marvel_api.dart';
import 'package:network/model/comic/comic_data_wrapper.dart';
import 'package:network/model/super_hero/character_data_wrapper.dart';

class MarvelService {
  static MarvelService? _instance;

  factory MarvelService() => _instance ??= MarvelService._();

  MarvelService._();

  Future<CharacterDataWrapper> fetchCharacters() async {
    var response = await MarvelApi().dio.get('/v1/public/characters', queryParameters: {"offset": 0, "limit": 100});
    return CharacterDataWrapper.fromJson(response.data);
  }

  Future<ComicDataWrapper> fetchComics(String characterId) async {
    var response = await MarvelApi().dio.get('/v1/public/characters/$characterId/comics', queryParameters: {"offset": 0, "limit": 100});
    return ComicDataWrapper.fromJson(response.data);
  }
}
