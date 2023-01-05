import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:portfolio/resource/strings.dart';
import 'package:portfolio/ui/widget/text.dart';

part 'top.g.dart';

@swidget
Widget _sectionTop(BuildContext context) => Column(
    children: [
      Text(
        'Hiroyuki Tamara',
        style: Theme.of(context).textTheme.headline2,
      ),
      const HeadLine4(text: 'mobile app developer'),
      const SizedBox(height: 64),
      const BodyText1(text: Strings.headLine)
    ],
  );
