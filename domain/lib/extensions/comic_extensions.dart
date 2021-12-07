import 'package:database/model/comic.dart' as database;
import 'package:domain/extensions/thumbnail_extensions.dart';
import 'package:network/model/comic/comic.dart' as network;
import 'package:shared/extensions/string_extensions.dart';

extension ComicToPersistenceComic on network.Comic {
  database.Comic toPersistenceComic(String characterId) {
    return database.Comic(id, title.toNonNullString(), resourceUri.toNonNullString(), characterId, isbn.toNonNullString(), format.toNonNullString(),
        pageCount, thumbnail.toLandscape());
  }
}
