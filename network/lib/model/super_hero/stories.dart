import 'package:json_annotation/json_annotation.dart';
import 'package:network/model/super_hero/item.dart';

part 'stories.g.dart';

@JsonSerializable()
class Stories {
  final int available, returned;
  final String collectionURI;
  final List<Item> items;

  Stories({required this.available, required this.returned, required this.collectionURI, required this.items});

  factory Stories.fromJson(Map<String, dynamic> json) => _$StoriesFromJson(json);

  Map<String, dynamic> toJson() => _$StoriesToJson(this);
}
