import 'package:domain/repository/comic_repository.dart';
import 'package:domain/repository/super_hero_repository.dart';
import 'package:shared/get_it_provider.dart';

void registerDomainModule() {
  getIt.registerSingleton<SuperHeroRepository>(SuperHeroRepository());
  getIt.registerSingleton<ComicRepository>(ComicRepository());
}
