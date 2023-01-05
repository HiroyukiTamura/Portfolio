import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:portfolio/gen/assets.gen.dart';
import 'package:portfolio/resource/dimens.dart';
import 'package:portfolio/ui/widget/clickable.dart';
import 'package:portfolio/ui/widget/text.dart';

part 'work.g.dart';

@swidget
Widget _sectionWork(
  BuildContext context, {
  required bool singlePain,
  required String title,
  required String caption,
  required String totalDlNumber,
  required String monthlyUserNumber,
  required List<Widget> techChips,
  required Widget image,
  String? googlePlayUrl,
  String? appStoreUrl,
}) =>
    Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: Dimens.MaxWidthWorks,
        ),
        child: Column(
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(height: 64),
            if (singlePain) ...[
              _DescBlock(
                title: title,
                caption: caption,
                totalDlNumber: totalDlNumber,
                monthlyUserNumber: monthlyUserNumber,
                techChips: techChips,
                googlePlayUrl: googlePlayUrl,
                appStoreUrl: appStoreUrl,
              ),
              const SizedBox(height: 64),
              _Image(child: image),
            ] else
              Row(
                children: [
                  Expanded(
                    child: _DescBlock(
                      title: title,
                      caption: caption,
                      totalDlNumber: totalDlNumber,
                      monthlyUserNumber: monthlyUserNumber,
                      techChips: techChips,
                      googlePlayUrl: googlePlayUrl,
                      appStoreUrl: appStoreUrl,
                    ),
                  ),
                  const SizedBox(width: 64),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: _Image(child: image),
                    ),
                  )
                ],
              )
          ],
        ),
      ),
    );

@swidget
Widget __descBlock(
  BuildContext context, {
  required String title,
  required String caption,
  required String totalDlNumber,
  required String monthlyUserNumber,
  required List<Widget> techChips,
  required String? googlePlayUrl,
  required String? appStoreUrl,
}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BodyText1(text: caption),
        const SizedBox(height: 8),
        Row(
          children: [
            if (googlePlayUrl != null)
              Clickable(
                url: googlePlayUrl,
                child: Assets.images.googlePlayBadge.image(
                  height: 64,
                ),
              ),
            if (googlePlayUrl != null && appStoreUrl != null)
              const SizedBox(width: 8),
            if (appStoreUrl != null)
              Clickable(
                url: appStoreUrl,
                child: Assets.images.appStoreBadge.svg(
                  height: 44,
                ),
              ),
          ],
        ),
        const SizedBox(height: 8),
        const HeadLine6(text: 'usage'),
        const SizedBox(height: 8),
        BodyPadded(text: 'total DL: $totalDlNumber'),
        BodyPadded(text: 'active user: $monthlyUserNumber/month'),
        const SizedBox(height: 16),
        const HeadLine6(text: 'tech stack'),
        const SizedBox(height: 16),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: techChips,
        ),
      ],
    );

@swidget
Widget __image({
  required Widget child,
}) =>
    ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: Dimens.MaxWidthImg),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: child,
      ),
    );
