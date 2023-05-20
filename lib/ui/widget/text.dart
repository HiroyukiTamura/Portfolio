import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'text.g.dart';

@swidget
Widget _bodyPadded(
  BuildContext context, {
  required String text,
}) =>
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: BodyText1(text: text),
    );

@swidget
Widget _headLine6(
  BuildContext context, {
  required String text,
}) =>
    Text(
      text,
      style: Theme.of(context).textTheme.titleLarge,
    );

@swidget
Widget _bodyText1(
  BuildContext context, {
  required String text,
}) =>
    Text(
      text,
      style: Theme.of(context).textTheme.bodyLarge,
    );

@swidget
Widget _headLine4(
  BuildContext context, {
  required String text,
}) =>
    Text(
      text,
      style: Theme.of(context).textTheme.headlineMedium,
    );
