import 'package:database/model/comic.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_super_hero/comic/comic_arguments.dart';
import 'package:flutter_super_hero/comic/comic_widget.dart';

class ComicItemWidget extends StatelessWidget {
  final Comic _comic;

  const ComicItemWidget(this._comic);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(12),
      elevation: 2.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 24,
              ),
              Flexible(
                  child: Text(
                _determineValueOrUnknown(_comic.name),
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              )),
              IconButton(onPressed: () => _openComicDetails(context), icon: Icon(Icons.open_in_new_outlined))
            ],
          ),
          Text(
            _determineValueOrUnknown(_comic.format),
            style: TextStyle(fontSize: 14),
          ),
          Text(
            _determineValueOrUnknown(_comic.isbn),
            style: TextStyle(fontSize: 14),
          ),
          Text(
            _determineValueOrUnknown("${_comic.pageCount}"),
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }

  _openComicDetails(BuildContext context) {
    Navigator.pushNamed(
      context,
      ComicWidget.routeName,
      arguments: ComicArguments(_comic.id),
    );
  }

  String _determineValueOrUnknown(String value) {
    if (value.isEmpty)
      return "unknown";
    else
      return value;
  }
}
