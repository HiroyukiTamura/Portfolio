import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:portfolio/model/btn_link.dart';
import 'package:portfolio/resource/strings.dart';
import 'package:portfolio/ui/block_oss.dart';
import 'package:portfolio/ui/skill_chip.dart';

part 'section_flutter_hls_parser.g.dart';

@swidget
Widget _blockFlutterHlsParser(BuildContext context) => const BlockFlutterOss(
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
Widget _blockDoubleTapPlayerView(BuildContext context) => const BlockFlutterOss(
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
