import 'package:floor/floor.dart';

@entity
class Comic {
  @primaryKey
  final int id;
  final String name;
  final String resourceUri;
  final String superHeroId;
  final String isbn;
  final String format;
  final int pageCount;
  final String thumbnail;

  Comic(this.id, this.name, this.resourceUri, this.superHeroId, this.isbn, this.format, this.pageCount, this.thumbnail);
}
