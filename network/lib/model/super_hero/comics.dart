import 'package:json_annotation/json_annotation.dart';
import 'package:network/model/super_hero/item.dart';

part 'comics.g.dart';

@JsonSerializable()
class Comics {
  final int available, returned;
  final String collectionURI;
  final List<Item> items;

  Comics({required this.available, required this.returned, required this.collectionURI, required this.items});

  factory Comics.fromJson(Map<String, dynamic> json) => _$ComicsFromJson(json);

  Map<String, dynamic> toJson() => _$ComicsToJson(this);
}
