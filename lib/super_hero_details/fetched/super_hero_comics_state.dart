
import 'package:database/model/comic.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'super_hero_comics_state.freezed.dart';

@freezed
class SuperHeroComicsState with _$SuperHeroComicsState {
  const factory SuperHeroComicsState.loading() = SuperHeroComicsLoading;

  const factory SuperHeroComicsState.fetched(List<Comic> comics) = SuperHeroComicsFetched;

  const factory SuperHeroComicsState.error(String message) = SuperHeroComicsError;
}
