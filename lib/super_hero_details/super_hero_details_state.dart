import 'dart:ui';

import 'package:database/model/super_hero.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'super_hero_details_state.freezed.dart';

@freezed
class SuperHeroDetailsState with _$SuperHeroDetailsState {
  const factory SuperHeroDetailsState.loading() = SuperHeroDetailsLoading;

  const factory SuperHeroDetailsState.fetched(SuperHero superHero, Color dominantColor) = SuperHeroDetailsFetched;

  const factory SuperHeroDetailsState.error(String message) = SuperHeroDetailsError;
}
