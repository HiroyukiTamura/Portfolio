import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:portfolio/model/btn_link.dart';
import 'package:portfolio/resource/dimens.dart';
import 'package:portfolio/resource/strings.dart';
import 'package:portfolio/ui/block_oss.dart';
import 'package:portfolio/ui/widget/skill_chip.dart';

part 'section_oss.g.dart';

@swidget
Widget _sectionOss({
  required bool singlePain,
}) =>
    singlePain
        ? Column(
            children: const [
              _BlockFlutterHlsParser(),
              SizedBox(height: 64),
              _BlockDoubleTapPlayerView(),
            ],
          )
        : ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: Dimens.MaxWidthWorks,
            ),
            child: Row(
              children: const [
                Expanded(
                  child: _BlockFlutterHlsParser(),
                ),
                SizedBox(width: 64),
                Expanded(
                  child: _BlockDoubleTapPlayerView(),
                ),
              ],
            ),
          );

@swidget
Widget __blockFlutterHlsParser(BuildContext context) => const BlockFlutterOss(
      title: 'Flutter Hls Parser',
      caption: Strings.flutterHlsParserCaption,
      links: [
        BtnLink(
          url: 'https://pub.dev/packages/flutter_hls_parser',
          value: 'pub.dev',
        ),
        BtnLink(
          url: 'https://github.com/HiroyukiTamura/flutter_hls_parser',
          value: 'Github',
        ),
      ],
      pubPoints: '130/140',
      likes: 20,
      popularity: 86,
      skillChips: [SkillChipDart()],
    );

@swidget
Widget __blockDoubleTapPlayerView(BuildContext context) => const BlockFlutterOss(
      title: 'Double Tap Player View',
      caption: Strings.doubleTapPlayerViewCaption,
      links: [
        BtnLink(
          url: 'https://pub.dev/packages/double_tap_player_view',
          value: 'pub.dev',
        ),
        BtnLink(
          url: 'https://github.com/HiroyukiTamura/double_tap_player_view',
          value: 'Github',
        ),
      ],
      pubPoints: '120/140',
      likes: 33,
      popularity: 74,
      skillChips: [SkillChipFlutter()],
    );
