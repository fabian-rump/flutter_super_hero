import 'package:bloc_test/bloc_test.dart';
import 'package:database/model/super_hero.dart';
import 'package:domain/repository/super_hero_repository.dart';
import 'package:flutter_super_hero/home/home_bloc.dart';
import 'package:flutter_super_hero/home/home_event.dart';
import 'package:flutter_super_hero/home/home_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'home_bloc_test.mocks.dart';

class SuperHeroRepositoryMock extends Mock implements SuperHeroRepository {}

@GenerateMocks([SuperHeroRepositoryMock])
void main() {
  final _superHeroRepositoryMock = MockSuperHeroRepositoryMock();
  final _superHeroes = [
    SuperHero(0, "MockName", "MockDescription", "mock_thumbnail_portrait.png", "mock_thumbnail_portrait.png"),
    SuperHero(1, "Another Super Hero", "MockDescription", "mock_thumbnail_portrait.png", "mock_thumbnail_portrait.png"),
  ];

  group('HomeBloc', () {
    blocTest<HomeBloc, HomeState>(
      'just load nothing',
      build: () => HomeBloc(HomeState.loading(), _superHeroRepositoryMock),
      expect: () => [],
    );

    blocTest<HomeBloc, HomeState>(
      'successful loading of the superheroes',
      build: () {
        when(_superHeroRepositoryMock.getSuperHeroes()).thenAnswer((_) async => _superHeroes);
        return HomeBloc(HomeState.loading(), _superHeroRepositoryMock);
      },
      act: (bloc) => bloc.add(HomeEvent.fetchSuperHeroes()),
      expect: () => [HomeState.loading(), HomeState.fetched(_superHeroes)],
    );
  });
}
