import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'section_download.g.dart';

@swidget
Widget sectionDownloaded(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        children: [
          Text(
            '4M+',
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: Colors.orange),
          ),
          const Text('total downloaded')
        ],
      ),
      const SizedBox(width: 64),
      Column(
        children: [
          Text(
            '14k+',
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: Colors.orange),
          ),
          const Text('active user/month')
        ],
      ),
    ],
  );