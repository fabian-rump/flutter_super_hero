import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ComicWidget extends StatelessWidget {
  static const routeName = '/comic';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("COMIC"),
      ),
    );
  }
}
