import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:portfolio/gen/assets.gen.dart';
import 'package:portfolio/resource/strings.dart';
import 'package:portfolio/ui/skill_chip.dart';

part 'section_train.g.dart';

@swidget
Widget sectionTrain(BuildContext context) => Row(
      children: [
        Expanded(
            child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                Strings.trainCaption,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Assets.images.googlePlayBadge.image(height: 64),
                const SizedBox(width: 8),
                Assets.images.appStoreBadge.svg(height: 44),
              ],
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'total DL: 500k',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'active user: 5k/month',
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
                const SkillChipFlutter(),
                SkillChip(
                  label: 'riverpod',
                  avatar: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Assets.images.riverpod.svg(),
                  ),
                ),
                SkillChip(
                  label: 'algolia',
                  avatar: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Assets.images.algolia.svg(),
                  ),
                ),
                const SkillChipFirebase(),
                const SkillChipTypeScript(),
                const SkillChipJira(),
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
