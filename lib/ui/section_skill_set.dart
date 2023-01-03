import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:portfolio/gen/assets.gen.dart';
import 'package:portfolio/resource/theme_colors.dart';
import 'package:portfolio/ui/skill_chip.dart';

part 'section_skill_set.g.dart';

@swidget
Widget _sectionSkillSet(BuildContext context) => Column(
    children: [
      Text(
        'skill set',
        style: Theme.of(context).textTheme.headline4,
      ),
      const SizedBox(height: 16),
      Wrap(
        spacing: 8,
        runSpacing: 8,
        children: [
          const SkillChipIcon(
            label: 'Android',
            icon: Icons.android,
            iconColor: ThemeColors.kAndroid,
          ),
          const SkillChipKotlin(),
          const SkillChipFlutter(),
          const SkillChipDart(),
          const SkillChipTypeScript(),
          SkillChip(
            label: 'Java',
            avatar: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Assets.images.java.svg(),
            ),
          ),
          const SkillChipFirebase(),
          const SkillChipJira(),
          const SkillChipAdmob(),
        ],
      ),
    ],
  );
