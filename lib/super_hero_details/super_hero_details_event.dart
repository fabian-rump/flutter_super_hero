import 'package:freezed_annotation/freezed_annotation.dart';

part 'super_hero_details_event.freezed.dart';

@freezed
abstract class SuperHeroDetailsEvent with _$SuperHeroDetailsEvent {
  const factory SuperHeroDetailsEvent.fetchDetails(int id) = DetailsFetchSuperHeroEvent;
}
