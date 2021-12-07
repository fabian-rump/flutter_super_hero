import 'package:flutter_super_hero/home/home_bloc.dart';
import 'package:flutter_super_hero/home/home_state.dart';
import 'package:shared/get_it_provider.dart';

void registerMainModule() {
  getIt.registerSingleton<HomeBloc>(HomeBloc(HomeState.loading()));
}
