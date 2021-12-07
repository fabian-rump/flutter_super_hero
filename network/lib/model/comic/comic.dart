import 'package:json_annotation/json_annotation.dart';
import 'package:network/model/comic/character_list.dart';
import 'package:network/model/shared/image.dart';

part 'comic.g.dart';

@JsonSerializable()
class Comic {
  final int id, pageCount;
  final String? title, isbn, format, resourceUri;
  final Image thumbnail;
  final CharacterList characters;

  Comic(
      {required this.id,
      required this.pageCount,
      required this.title,
      required this.isbn,
      required this.format,
      required this.resourceUri,
      required this.thumbnail,
      required this.characters});

  factory Comic.fromJson(Map<String, dynamic> json) => _$ComicFromJson(json);

  Map<String, dynamic> toJson() => _$ComicToJson(this);
}
