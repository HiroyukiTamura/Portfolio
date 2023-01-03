import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:portfolio/gen/assets.gen.dart';
import 'package:portfolio/resource/strings.dart';
import 'package:portfolio/ui/section_work.dart';
import 'package:portfolio/ui/skill_chip.dart';

part 'section_train.g.dart';

@swidget
Widget _sectionTrain(BuildContext context) => SectionWork(
      title: '全国列車位置情報アプリ',
      caption: Strings.trainCaption,
      totalDlNumber: '500k',
      monthlyUserNumber: '5k',
      techChips: [
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
        const SkillChipNodeJs(),
        const SkillChipTypeScript(),
        const SkillChipJira(),
        SkillChip(
          label: 'figma',
          avatar: Padding(
            padding: const EdgeInsets.all(2),
            child: Assets.images.figma.svg(),
          ),
        )
      ],
      image: Assets.images.trainCover.image(height: 280, fit: BoxFit.fill),
    );
