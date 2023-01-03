import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/gen/assets.gen.dart';
import 'package:portfolio/style/theme_colors.dart';

part 'content.g.dart';

@swidget
Widget _root(BuildContext context) => Scaffold(
      backgroundColor: ThemeColors.kBg,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 64),
        child: Column(
          children: [
            Container(
              child: Text(
                'Hiroyuki Tamara',
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            Container(
              child: Text(
                'mobile app developer',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            const SizedBox(height: 64),
            Container(
              child: Text(
                '''I’m a self-employed software engineer specializing in native Android app and Flutter app.
I’ve designed, developed and maintain my apps by myself.
My apps have been downloaded over 4M users and have over 60k users/month now on.
''',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            const SizedBox(height: 64),
            Container(
              child: Text(
                'skill set',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            const SizedBox(height: 16),
            Container(
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  const _SkillChipIcon(
                    label: 'Android',
                    icon: Icons.android,
                    iconColor: ThemeColors.kAndroid,
                  ),
                  _SkillChip(
                    label: 'Kotlin',
                    avatar: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: Assets.images.kotlin.svg(),
                    ),
                  ),
                  _SkillChip(
                    label: 'Flutter',
                    avatar: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Assets.images.flutter.svg(),
                    ),
                  ),
                  _SkillChip(
                    label: 'Dart',
                    avatar: Assets.images.dart.svg(),
                  ),
                  _SkillChip(
                    label: 'TypeScript',
                    avatar: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: Assets.images.typescript.svg(),
                    ),
                  ),
                  _SkillChip(
                    label: 'Java',
                    avatar: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: Assets.images.java.svg(),
                    ),
                  ),
                  _SkillChip(
                    label: 'Firebase',
                    avatar: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Assets.images.firebase.svg(),
                    ),
                  ),
                  _SkillChip(
                    label: 'Jira',
                    avatar: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Assets.images.jira.svg(),
                    ),
                  ),
                  _SkillChip(
                    label: 'AdMob',
                    avatar: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Assets.images.admob.svg(),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 64),
            Container(
              child: Text(
                'my apps',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            const SizedBox(height: 64),
            Container(
              child: Text(
                'ラジカッター',
                style: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme)
                    .headline3,
              ),
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '''
ラジカッター is a internet radio client app. you can listen live stream, download past radio stream, share audio files. this app is available only in Japan.''',
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
                _SkillChip(
                  label: 'Kotlin',
                  avatar: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Assets.images.kotlin.svg(),
                  ),
                ),
                _SkillChip(
                  label: 'Jetpack Compose',
                  avatar: Assets.images.jetpackCompose.image(),
                ),
                _SkillChip(
                  label: 'Firebase',
                  avatar: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Assets.images.firebase.svg(),
                  ),
                ),
                _SkillChip(
                  label: 'TypeScript',
                  avatar: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Assets.images.typescript.svg(),
                  ),
                ),
                _SkillChip(
                  label: 'Jira',
                  avatar: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Assets.images.jira.svg(),
                  ),
                ),
                _SkillChip(
                  label: 'AdMob',
                  avatar: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Assets.images.admob.svg(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );

@swidget
Widget __skillChipIcon({
  required String label,
  required IconData icon,
  required Color iconColor,
}) =>
    Chip(
      avatar: Icon(
        icon,
        color: iconColor,
      ),
      label: Text(label),
    );

@swidget
Widget __skillChip({
  required String label,
  required Widget avatar,
}) =>
    Chip(
      avatar: avatar,
      label: Text(label),
    );
