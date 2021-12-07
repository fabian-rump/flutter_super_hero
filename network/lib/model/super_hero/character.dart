import 'package:json_annotation/json_annotation.dart';
import 'package:network/model/shared/image.dart';
import 'package:network/model/super_hero/comics.dart';
import 'package:network/model/super_hero/events.dart';
import 'package:network/model/super_hero/series.dart';
import 'package:network/model/super_hero/stories.dart';
import 'package:network/model/super_hero/url.dart';

part 'character.g.dart';

@JsonSerializable()
class Character {
  final int id;
  final String name, description, modified, resourceURI;
  final List<Url> urls;
  final Image thumbnail;
  final Comics comics;
  final Stories stories;
  final Events events;
  final Series series;

  Character(
      {required this.id,
      required this.name,
      required this.description,
      required this.modified,
      required this.resourceURI,
      required this.urls,
      required this.thumbnail,
      required this.comics,
      required this.stories,
      required this.events,
      required this.series});

  factory Character.fromJson(Map<String, dynamic> json) => _$CharacterFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterToJson(this);
}
