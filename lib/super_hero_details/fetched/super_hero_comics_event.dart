import 'package:freezed_annotation/freezed_annotation.dart';

part 'super_hero_comics_event.freezed.dart';

@freezed
abstract class SuperHeroComicsEvent with _$SuperHeroComicsEvent {
  const factory SuperHeroComicsEvent.fetchComics(String id) = SuperHeroFetchComicsEvent;
}
