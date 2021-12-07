import 'package:json_annotation/json_annotation.dart';
import 'package:network/model/comic/comic.dart';

part 'comic_data_container.g.dart';

@JsonSerializable()
class ComicDataContainer {
  final int offset, limit, total, count;
  final List<Comic> results;

  ComicDataContainer({required this.offset, required this.limit, required this.total, required this.count, required this.results});

  factory ComicDataContainer.fromJson(Map<String, dynamic> json) => _$ComicDataContainerFromJson(json);

  Map<String, dynamic> toJson() => _$ComicDataContainerToJson(this);
}
