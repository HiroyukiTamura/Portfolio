import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:portfolio/gen/assets.gen.dart';
import 'package:portfolio/resource/strings.dart';
import 'package:portfolio/ui/skill_chip.dart';

part 'section_radio.g.dart';

@swidget
Widget sectionRadio(BuildContext context) => Row(
      children: [
        Expanded(
            child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                Strings.radioCaption,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerLeft,
              child: Assets.images.googlePlayBadge.image(height: 64),
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'total DL: 3.5M',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'active user: 11k/month',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'tech stack',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                const SkillChipKotlin(),
                SkillChip(
                  label: 'Jetpack Compose',
                  avatar: Assets.images.jetpackCompose.image(),
                ),
                SkillChip(
                  label: 'realm',
                  avatar: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Assets.images.realm.svg(),
                  ),
                ),
                const SkillChipFirebase(),
                const SkillChipTypeScript(),
                const SkillChipJira(),
                const SkillChipAdmob(),
              ],
            ),
          ],
        )),
        Expanded(
          child: Column(
            children: [Placeholder()],
          ),
        )
      ],
    );
