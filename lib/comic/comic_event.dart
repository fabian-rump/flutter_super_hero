import 'package:freezed_annotation/freezed_annotation.dart';

part 'comic_event.freezed.dart';

@freezed
abstract class ComicEvent with _$ComicEvent {
  const factory ComicEvent.fetchDetails(int id) = ComicFetchEvent;
}
