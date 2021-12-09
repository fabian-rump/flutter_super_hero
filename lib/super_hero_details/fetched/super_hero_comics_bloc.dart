import 'package:domain/repository/comic_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_super_hero/super_hero_details/fetched/super_hero_comics_event.dart';
import 'package:flutter_super_hero/super_hero_details/fetched/super_hero_comics_state.dart';
import 'package:shared/get_it_provider.dart';

class SuperHeroComicsBloc extends Bloc<SuperHeroComicsEvent, SuperHeroComicsState> {
  final _comicRepository = getIt<ComicRepository>();

  SuperHeroComicsBloc(SuperHeroComicsState initialState) : super(SuperHeroComicsState.loading()) {
    on<SuperHeroFetchComicsEvent>(_fetchComics);
  }

  Future<void> _fetchComics(SuperHeroFetchComicsEvent event, Emitter<SuperHeroComicsState> emit) async {
    emit(SuperHeroComicsState.loading());
    await _comicRepository.persistComics(event.id);
    final response = await _comicRepository.getComicsBySuperHeroId(event.id);
    if (response != null) {
      emit(SuperHeroComicsState.fetched(response));
    } else
      emit(SuperHeroComicsState.error(_ERROR_MESSAGE));
  }

  static const _ERROR_MESSAGE = "No Comics found.";
}
