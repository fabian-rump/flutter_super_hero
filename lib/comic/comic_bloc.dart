import 'package:database/model/comic.dart';
import 'package:domain/repository/comic_repository.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_super_hero/comic/comic_event.dart';
import 'package:flutter_super_hero/comic/comic_state.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:shared/constants.dart';
import 'package:shared/get_it_provider.dart';

class ComicBloc extends Bloc<ComicEvent, ComicState> {
  final _comicRepository = getIt<ComicRepository>();

  ComicBloc(ComicState initialState) : super(ComicState.loading()) {
    on<ComicFetchEvent>(_fetchComic);
  }

  Future<void> _fetchComic(ComicFetchEvent event, Emitter<ComicState> emit) async {
    emit(ComicState.loading());
    final comic = await _comicRepository.getComicById(event.id);
    if (comic != null) {
      final dominantColor = await _calculateDominantColorFromThumbnail(comic);
      emit(ComicState.fetched(comic, dominantColor ?? DEFAULT_DOMINANT_COLOR));
    } else
      emit(ComicState.error(_ERROR_MESSAGE));
  }

  Future<Color?> _calculateDominantColorFromThumbnail(Comic comic) async {
    final response = await PaletteGenerator.fromImageProvider(NetworkImage(comic.thumbnail));
    return response.dominantColor?.color;
  }

  static const _ERROR_MESSAGE = "Comic not found";
}
