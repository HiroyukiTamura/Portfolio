import 'package:flutter/cupertino.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:portfolio/gen/assets.gen.dart';
import 'package:portfolio/resource/strings.dart';
import 'package:portfolio/ui/section_work.dart';
import 'package:portfolio/ui/skill_chip.dart';

part 'section_itsumuso.g.dart';

@swidget
Widget _sectionItsumuso() => SectionWork(
      title: 'itsumuso',
      caption: Strings.itsumusoCaption,
      totalDlNumber: '10+',
      monthlyUserNumber: '0+',
      techChips: const [
        SkillChipFlutter(),
        SkillChipDart(),
        SkillChipFirebase(),
      ],
      image: Assets.images.itsumusoCover.image(),
      googlePlayUrl:
          'https://play.google.com/store/apps/details?id=com.cks.yotsugi',
      appStoreUrl: 'https://apps.apple.com/au/app/itsumuso/id1531367636',
    );
