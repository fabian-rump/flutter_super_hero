import 'package:json_annotation/json_annotation.dart';
import 'package:network/model/super_hero/character.dart';

part 'character_data_container.g.dart';

@JsonSerializable()
class CharacterDataContainer {
  final int offset, limit, total, count;
  final List<Character> results;

  CharacterDataContainer({required this.offset, required this.limit, required this.total, required this.count, required this.results});

  factory CharacterDataContainer.fromJson(Map<String, dynamic> json) => _$CharacterDataContainerFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterDataContainerToJson(this);
}
