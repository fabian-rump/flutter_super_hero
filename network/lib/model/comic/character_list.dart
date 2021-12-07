import 'package:json_annotation/json_annotation.dart';
import 'package:network/model/comic/character_summary.dart';

part 'character_list.g.dart';

@JsonSerializable()
class CharacterList {
  final int available, returned;
  final String? collectionUri;
  final List<CharacterSummary> items;

  CharacterList({required this.available, required this.returned, required this.collectionUri, required this.items});

  factory CharacterList.fromJson(Map<String, dynamic> json) => _$CharacterListFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterListToJson(this);
}
