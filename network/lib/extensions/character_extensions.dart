import 'package:network/model/super_hero/character.dart';

extension SuperHeroWithThumbnail on Character {
  bool filterThumbnail() {
    return !(thumbnail.path?.contains("image_not_available") ?? false);
  }

  bool filterDescription() {
    return description.isNotEmpty;
  }
}
