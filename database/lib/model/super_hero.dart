import 'package:floor/floor.dart';

@entity
class SuperHero {
  @primaryKey
  final int id;
  final String name;
  final String description;
  final String thumbnailPortrait;
  final String thumbnailLandscape;

  SuperHero(this.id, this.name, this.description, this.thumbnailPortrait, this.thumbnailLandscape);
}
