import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:portfolio/gen/assets.gen.dart';

part 'skill_chip.g.dart';

@swidget
Widget _skillChipIcon({
  required String label,
  required IconData icon,
  required Color iconColor,
}) =>
    Chip(
      avatar: Icon(
        icon,
        color: iconColor,
      ),
      label: Text(label),
    );

@swidget
Widget _skillChip({
  required String label,
  required Widget avatar,
}) =>
    Chip(
      avatar: avatar,
      label: Text(label),
    );

@swidget
Widget _skillChipAdmob() => SkillChip(
      label: 'AdMob',
      avatar: Padding(
        padding: const EdgeInsets.all(2),
        child: Assets.images.admob.svg(),
      ),
    );

@swidget
Widget _skillChipJira() => SkillChip(
      label: 'Jira',
      avatar: Padding(
        padding: const EdgeInsets.all(2),
        child: Assets.images.jira.svg(),
      ),
    );

@swidget
Widget _skillChipTypeScript() => SkillChip(
      label: 'TypeScript',
      avatar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: Assets.images.typescript.svg(),
      ),
    );

@swidget
Widget _skillChipNodeJs() => SkillChip(
      label: 'Node.js',
      avatar: Padding(
        padding: const EdgeInsets.all(2),
        child: Assets.images.nodeJs.svg(),
      ),
    );

@swidget
Widget _skillChipFirebase() => SkillChip(
      label: 'Firebase',
      avatar: Padding(
        padding: const EdgeInsets.all(2),
        child: Assets.images.firebase.svg(),
      ),
    );

@swidget
Widget _skillChipKotlin() => SkillChip(
      label: 'Kotlin',
      avatar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: Assets.images.kotlin.svg(),
      ),
    );

@swidget
Widget _skillChipFlutter() => SkillChip(
      label: 'Flutter',
      avatar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2),
        child: Assets.images.flutter.svg(),
      ),
    );

@swidget
Widget _skillChipDart() => SkillChip(
      label: 'Dart',
      avatar: Assets.images.dart.svg(),
    );

@swidget
Widget _skillChipLang({
  required String label,
}) =>
    SkillChipIcon(
      icon: Icons.translate,
      iconColor: Colors.black,
      label: label,
    );
