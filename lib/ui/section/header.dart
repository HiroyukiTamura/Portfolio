import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'header.g.dart';

@swidget
Widget _sectionHeader(BuildContext context) => ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 64),
      child: Align(
        alignment: Alignment.centerRight,
        child: Wrap(
          spacing: 16,
          runSpacing: 16,
          crossAxisAlignment: WrapCrossAlignment.end,
          children: [
            _IconBtn(icon: FontAwesomeIcons.github, onPressed: () {

            }),
            _IconBtn(icon: Icons.facebook, onPressed: () {
              // https://www.facebook.com/freqmodu874/
            }),
            _IconBtn(icon: Icons.email, onPressed: () {

            }),
          ],
        ),
      ),
    );

@swidget
Widget __iconBtn(
  BuildContext context, {
  required IconData icon,
  required void Function() onPressed,
}) =>
    IconButton(
      iconSize: 16,
      color: Theme.of(context).primaryColor,
      splashRadius: 24,
      onPressed: onPressed,
      icon: Icon(icon),
    );
