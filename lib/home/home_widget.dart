import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_super_hero/home/home_bloc.dart';
import 'package:flutter_super_hero/home/home_event.dart';
import 'package:flutter_super_hero/home/home_fetched_widget.dart';
import 'package:flutter_super_hero/home/home_state.dart';
import 'package:shared/get_it_provider.dart';

class HomeWidget extends StatelessWidget {
  final _bloc = getIt<HomeBloc>();

  HomeWidget() {
    _bloc.add(HomeEvent.fetchSuperHeroes());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Super Heroes"),),
        body: BlocBuilder(
          bloc: _bloc,
          builder: (context, state) {
            if (state is HomeFetched)
              return HomeFetchedWidget(state.superHeroes);
            else
              return Center(child: CircularProgressIndicator());
          },
        ));
  }
}
