import 'package:network/model/shared/image.dart';

extension ImageExtensions on Image {
  toPortrait() {
    return "$path/portrait_xlarge.$extension";
  }

  toLandscape() {
    return "$path/landscape_incredible.$extension";
  }
}
