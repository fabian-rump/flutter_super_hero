import 'package:database/model/super_hero.dart';
import 'package:domain/repository/super_hero_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_super_hero/super_hero_details/super_hero_details_event.dart';
import 'package:flutter_super_hero/super_hero_details/super_hero_details_state.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:shared/constants.dart';
import 'package:shared/get_it_provider.dart';

class SuperHeroDetailsBloc extends Bloc<SuperHeroDetailsEvent, SuperHeroDetailsState> {
  final _superHeroRepository = getIt<SuperHeroRepository>();

  SuperHeroDetailsBloc(SuperHeroDetailsState initialState) : super(SuperHeroDetailsState.loading()) {
    on<DetailsFetchSuperHeroEvent>(_fetchSuperHero);
  }

  Future<void> _fetchSuperHero(DetailsFetchSuperHeroEvent event, Emitter<SuperHeroDetailsState> emit) async {
    emit(SuperHeroDetailsState.loading());
    final superHero = await _superHeroRepository.getSuperHeroById(event.id);
    if (superHero != null) {
      final dominantColor = await _calculateDominantColorFromThumbnail(superHero);
      emit(SuperHeroDetailsState.fetched(superHero, dominantColor ?? DEFAULT_DOMINANT_COLOR));
    } else
      emit(SuperHeroDetailsState.error(_ERROR_MESSAGE));
  }

  Future<Color?> _calculateDominantColorFromThumbnail(SuperHero superHero) async {
    final response = await PaletteGenerator.fromImageProvider(NetworkImage(superHero.thumbnailLandscape));
    return response.dominantColor?.color;
  }

  static const _ERROR_MESSAGE = "Super Hero not found";
}
