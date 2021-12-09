import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_super_hero/comic/comic_arguments.dart';
import 'package:flutter_super_hero/comic/comic_bloc.dart';
import 'package:flutter_super_hero/comic/comic_event.dart';
import 'package:flutter_super_hero/comic/comic_fetched_widget.dart';
import 'package:flutter_super_hero/comic/comic_state.dart';
import 'package:shared/get_it_provider.dart';
import 'package:shared/ui/loading_widget.dart';

class ComicWidget extends StatelessWidget {
  static const routeName = '/comic';
  final _bloc = getIt<ComicBloc>();

  ComicWidget(ComicArguments arguments) {
    _bloc.add(ComicEvent.fetchDetails(arguments.comicId));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _bloc,
      builder: (context, state) {
        if (state is ComicFetched) {
          return ComicFetchedWidget(state.comic, state.dominantColor);
        } else {
          return LoadingWidget();
        }
      },
    );
  }
}
