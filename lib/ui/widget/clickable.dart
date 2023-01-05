import 'package:flutter/cupertino.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:portfolio/util.dart';

part 'clickable.g.dart';

@swidget
Widget _clickable({
  required String url,
  required Widget child,
}) => MouseRegion(
    cursor: SystemMouseCursors.click,
    child: GestureDetector(
      onTap: () async => Util.launch(url),
      child: child,
    ),
  );