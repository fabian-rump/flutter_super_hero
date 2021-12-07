import 'package:json_annotation/json_annotation.dart';
import 'package:network/model/comic/comic_data_container.dart';

part 'comic_data_wrapper.g.dart';

@JsonSerializable()
class ComicDataWrapper {
  final int code;
  final String status, copyright, attributionText, attributionHTML, etag;
  final ComicDataContainer data;

  ComicDataWrapper(
      {required this.code,
      required this.status,
      required this.copyright,
      required this.attributionText,
      required this.attributionHTML,
      required this.etag,
      required this.data});

  factory ComicDataWrapper.fromJson(Map<String, dynamic> json) => _$ComicDataWrapperFromJson(json);

  Map<String, dynamic> toJson() => _$ComicDataWrapperToJson(this);
}
