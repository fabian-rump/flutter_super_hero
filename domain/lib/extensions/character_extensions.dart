import 'package:database/model/super_hero.dart';
import 'package:domain/extensions/thumbnail_extensions.dart';
import 'package:network/model/super_hero/character.dart';

extension CharacterToSuperHero on Character {
  SuperHero toSuperHero() {
    return SuperHero(id, name, description, thumbnail.toPortrait(), thumbnail.toLandscape());
  }
}
