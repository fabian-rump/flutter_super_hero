import 'package:json_annotation/json_annotation.dart';
import 'package:network/model/super_hero/item.dart';

part 'series.g.dart';

@JsonSerializable()
class Series {
  final int available, returned;
  final String collectionURI;
  final List<Item> items;

  Series({required this.available, required this.returned, required this.collectionURI, required this.items});

  factory Series.fromJson(Map<String, dynamic> json) => _$SeriesFromJson(json);

  Map<String, dynamic> toJson() => _$SeriesToJson(this);
}
