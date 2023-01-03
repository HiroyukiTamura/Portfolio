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
      googlePlayUrl:
          'https://play.google.com/store/apps/details?id=cks.train.train',
      appStoreUrl: 'https://apps.apple.com/au/app/%E5%85%A8%E5%9B%BD%E5%88%97%E8%BB%8A%E4%BD%8D%E7%BD%AE%E3%82%A2%E3%83%97%E3%83%AA/id1479323990',
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
