import 'dart:ui';

import 'package:database/model/comic.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comic_state.freezed.dart';

@freezed
class ComicState with _$ComicState {
  const factory ComicState.loading() = ComicLoading;

  const factory ComicState.fetched(Comic comic, Color dominantColor) = ComicFetched;

  const factory ComicState.error(String message) = ComicError;
}
