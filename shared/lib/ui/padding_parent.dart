import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PaddingParent extends StatelessWidget {
  final Widget child;
  final double padding;

  const PaddingParent(this.child, {this.padding = 8});

  Widget build(BuildContext context) {
    return Padding(child: child, padding: EdgeInsets.all(padding));
  }
}
