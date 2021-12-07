import 'package:json_annotation/json_annotation.dart';

part 'character_summary.g.dart';

@JsonSerializable()
class CharacterSummary {
  final String? resourceUri, name, role;

  CharacterSummary({required this.resourceUri, required this.name, required this.role});

  factory CharacterSummary.fromJson(Map<String, dynamic> json) => _$CharacterSummaryFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterSummaryToJson(this);
}
