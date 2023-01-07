import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:portfolio/gen/assets.gen.dart';
import 'package:portfolio/ui/section/work.dart';
import 'package:portfolio/ui/widget/skill_chip.dart';

part 'radio.g.dart';

@swidget
Widget _sectionRadio(
  BuildContext context, {
  required bool singlePain,
}) =>
    SectionWork(
      singlePain: singlePain,
      title: 'ラジカッター',
      caption: AppLocalizations.of(context)!.radioCaption,
      totalDlNumber: '400,000+',
      monthlyUserNumber: '15,000+',
      googlePlayUrl:
          'https://play.google.com/store/apps/details?id=com.cks.hiroyuki2.radiko',
      techChips: const [
        SkillChipKotlin(),
        SkillChipCompose(),
        SkillChipRealm(),
        SkillChipFirebase(),
        SkillChipNodeJs(),
        SkillChipTypeScript(),
        SkillChipJira(),
        SkillChipAdmob(),
      ],
      image: Container(
        child: Assets.images.radikoCover.image(),
      ),
    );
