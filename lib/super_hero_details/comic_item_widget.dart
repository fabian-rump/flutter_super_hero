import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared/ui/padding_parent.dart';

class ComicItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PaddingParent(Text(
      "Comic Item",
      textAlign: TextAlign.center,
    ));
  }
}
