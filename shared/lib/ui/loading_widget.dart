import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoadingWidget extends StatelessWidget {
  final bool withScaffold;

  const LoadingWidget({this.withScaffold = true});

  @override
  Widget build(BuildContext context) {
    return withScaffold
        ? Scaffold(
            appBar: AppBar(
              title: Text("Loading..."),
            ),
            body: Center(
              child: CircularProgressIndicator(),
            ))
        : Center(child: CircularProgressIndicator());
  }
}
