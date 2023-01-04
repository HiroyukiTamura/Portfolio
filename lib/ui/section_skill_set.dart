import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:portfolio/gen/assets.gen.dart';
import 'package:portfolio/resource/strings.dart';
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
        const SizedBox(height: 32),
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
            const SkillChipNodeJs(),
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
            SkillChipIcon(
              icon: Icons.translate,
              iconColor: Colors.black,
              label: 'native level Japanese',
            ),
            SkillChipIcon(
              icon: Icons.translate,
              iconColor: Colors.black,
              label: 'B1 level English',
            )
          ],
        ),
        const SizedBox(height: 128),
        Text(
          'articles',
          style: Theme.of(context).textTheme.headline4,
        ),
        const SizedBox(height: 32),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            Container(
              height: 96,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      '[Riverpod] StateNotifierのstateが特定の値のときだけWidgetをビルドするには・過去のStateを取得するには'),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(
                        Icons.sell,
                        color: Theme.of(context).textTheme.bodyText1?.color,
                        size: 14,
                      ),
                      SizedBox(width: 4),
                      Text(
                        'Dart, Flutter, Riverpod, freezed',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      SizedBox(width: 8),
                      Icon(
                        Icons.favorite,
                        color: Theme.of(context).textTheme.bodyText1?.color,
                        size: 14,
                      ),
                      SizedBox(width: 4),
                      Text(
                        '7',
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        // const SizedBox(height: 16),
        // Text(
        //   Strings.skillSetCaption,
        //   style: Theme.of(context).textTheme.bodyText1,
        // )
      ],
    );
