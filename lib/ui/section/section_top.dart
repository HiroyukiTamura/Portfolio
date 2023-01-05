import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:portfolio/resource/strings.dart';

part 'section_top.g.dart';

@swidget
Widget _sectionTop(BuildContext context) => Column(
    children: [
      Text(
        'Hiroyuki Tamara',
        style: Theme.of(context).textTheme.headline2,
      ),
      Text(
        'mobile app developer',
        style: Theme.of(context).textTheme.headline4,
      ),
      const SizedBox(height: 64),
      Text(
        Strings.headLine,
        style: Theme.of(context).textTheme.bodyText1,
      )
    ],
  );
