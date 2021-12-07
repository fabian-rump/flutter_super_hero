import 'package:json_annotation/json_annotation.dart';
import 'package:network/model/super_hero/item.dart';

part 'events.g.dart';

@JsonSerializable()
class Events {
  final int available, returned;
  final String collectionURI;
  final List<Item> items;

  Events({required this.available, required this.returned, required this.collectionURI, required this.items});

  factory Events.fromJson(Map<String, dynamic> json) => _$EventsFromJson(json);

  Map<String, dynamic> toJson() => _$EventsToJson(this);
}
