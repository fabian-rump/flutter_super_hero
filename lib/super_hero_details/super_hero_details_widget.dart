import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_super_hero/super_hero_details/super_hero_details_arguments.dart';
import 'package:flutter_super_hero/super_hero_details/super_hero_details_bloc.dart';
import 'package:flutter_super_hero/super_hero_details/super_hero_details_event.dart';
import 'package:flutter_super_hero/super_hero_details/super_hero_details_fetched_widget.dart';
import 'package:flutter_super_hero/super_hero_details/super_hero_details_state.dart';
import 'package:shared/get_it_provider.dart';
import 'package:shared/ui/loading_widget.dart';

class SuperHeroDetailsWidget extends StatelessWidget {
  static const routeName = '/superHeroDetails';

  final _bloc = getIt<SuperHeroDetailsBloc>();

  SuperHeroDetailsWidget(SuperHeroDetailsArguments arguments) {
    _bloc.add(SuperHeroDetailsEvent.fetchDetails(arguments.superHeroId));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _bloc,
      builder: (context, state) {
        if (state is SuperHeroDetailsFetched)
          return SuperHeroDetailsFetchedWidget(state.superHero, state.dominantColor);
        else
          return LoadingWidget();
      },
    );
  }
}
