import 'package:json_annotation/json_annotation.dart';
import 'package:network/model/super_hero/character_data_container.dart';

part 'character_data_wrapper.g.dart';

@JsonSerializable()
class CharacterDataWrapper {
  final int? code;
  final String? status, copyright, attributionText, attributionHTML, etag;
  final CharacterDataContainer? data;

  CharacterDataWrapper(
      {required this.code,
      required this.status,
      required this.copyright,
      required this.attributionText,
      required this.attributionHTML,
      required this.etag,
      required this.data});

  factory CharacterDataWrapper.fromJson(Map<String, dynamic> json) => _$CharacterDataWrapperFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterDataWrapperToJson(this);
}
