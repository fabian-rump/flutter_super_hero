import 'package:flutter_super_hero/comic/comic_bloc.dart';
import 'package:flutter_super_hero/comic/comic_state.dart';
import 'package:flutter_super_hero/home/home_bloc.dart';
import 'package:flutter_super_hero/home/home_state.dart';
import 'package:flutter_super_hero/super_hero_details/fetched/super_hero_comics_bloc.dart';
import 'package:flutter_super_hero/super_hero_details/fetched/super_hero_comics_state.dart';
import 'package:flutter_super_hero/super_hero_details/super_hero_details_bloc.dart';
import 'package:flutter_super_hero/super_hero_details/super_hero_details_state.dart';
import 'package:shared/get_it_provider.dart';

void registerMainModule() {
  getIt.registerSingleton<HomeBloc>(HomeBloc(HomeState.loading()));
  getIt.registerSingleton<SuperHeroDetailsBloc>(SuperHeroDetailsBloc(SuperHeroDetailsState.loading()));
  getIt.registerSingleton<SuperHeroComicsBloc>(SuperHeroComicsBloc(SuperHeroComicsState.loading()));
  getIt.registerSingleton<ComicBloc>(ComicBloc(ComicState.loading()));
}
