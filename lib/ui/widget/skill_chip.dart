import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:portfolio/gen/assets.gen.dart';
import 'package:portfolio/resource/theme_colors.dart';

part 'skill_chip.g.dart';

@swidget
Widget __skillChipIcon({
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
Widget __skillChip({
  required String label,
  required Widget avatar,
}) =>
    Chip(
      avatar: avatar,
      label: Text(label),
    );

@swidget
Widget _skillChipAdmob() => _SkillChip(
      label: 'AdMob',
      avatar: Padding(
        padding: const EdgeInsets.all(2),
        child: Assets.images.admob.svg(),
      ),
    );

@swidget
Widget _skillChipJira() => _SkillChip(
      label: 'Jira',
      avatar: Padding(
        padding: const EdgeInsets.all(2),
        child: Assets.images.jira.image(),
      ),
    );

@swidget
Widget _skillChipTypeScript() => _SkillChip(
      label: 'TypeScript',
      avatar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: Assets.images.typescript.svg(),
      ),
    );

@swidget
Widget _skillChipNodeJs() => _SkillChip(
      label: 'Node.js',
      avatar: Padding(
        padding: const EdgeInsets.all(2),
        child: Assets.images.nodeJs.svg(),
      ),
    );

@swidget
Widget _skillChipFirebase() => _SkillChip(
      label: 'Firebase',
      avatar: Padding(
        padding: const EdgeInsets.all(2),
        child: Assets.images.firebase.image(),
      ),
    );

@swidget
Widget _skillChipKotlin() => _SkillChip(
      label: 'Kotlin',
      avatar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: Assets.images.kotlin.svg(),
      ),
    );

@swidget
Widget _skillChipFlutter() => _SkillChip(
      label: 'Flutter',
      avatar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2),
        child: Assets.images.flutter.svg(),
      ),
    );

@swidget
Widget _skillChipDart() => _SkillChip(
      label: 'Dart',
      avatar: Assets.images.dart.svg(),
    );

@swidget
Widget _skillChipLang({
  required String label,
}) =>
    _SkillChipIcon(
      icon: Icons.translate,
      iconColor: Colors.black,
      label: label,
    );

@swidget
Widget _skillChipAndroid() => const _SkillChipIcon(
      label: 'Android',
      icon: Icons.android,
      iconColor: ThemeColors.kAndroid,
    );

@swidget
Widget _skillChipJava() => _SkillChip(
      label: 'Java',
      avatar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: Assets.images.java.svg(),
      ),
    );

@swidget
Widget _skillChipCompose() => _SkillChip(
    label: 'Jetpack Compose',
    avatar: Assets.images.jetpackCompose.image(),
  );

@swidget
Widget _skillChipRealm() => _SkillChip(
    label: 'Realm',
    avatar: Padding(
      padding: const EdgeInsets.all(2),
      child: Assets.images.realm.image(),
    ),
  );

@swidget
Widget _skillChipRiverpod() => _SkillChip(
  label: 'riverpod',
  avatar: Padding(
    padding: const EdgeInsets.all(2),
    child: Assets.images.riverpod.svg(),
  ),
);

@swidget
Widget _skillChipAlgolia() => _SkillChip(
  label: 'algolia',
  avatar: Padding(
    padding: const EdgeInsets.all(2),
    child: Assets.images.algolia.svg(),
  ),
);

@swidget
Widget _skillChipFigma() => _SkillChip(
  label: 'figma',
  avatar: Padding(
    padding: const EdgeInsets.all(2),
    child: Assets.images.figma.svg(),
  ),
);