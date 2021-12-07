import 'package:domain/repository/super_hero_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_super_hero/home/home_event.dart';
import 'package:flutter_super_hero/home/home_state.dart';
import 'package:shared/get_it_provider.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final _superHeroRepository = getIt<SuperHeroRepository>();

  HomeBloc(HomeState initialState) : super(HomeState.loading()) {
    on<HomeFetchSuperHeroesEvent>(_fetchSuperHeroes);
  }

  Future<void> _fetchSuperHeroes(HomeFetchSuperHeroesEvent event, Emitter<HomeState> emit) async {
    emit(HomeState.loading());
    final superHeroes = await _superHeroRepository.getSuperHeroes();
    emit(HomeState.fetched(superHeroes));
  }
}
