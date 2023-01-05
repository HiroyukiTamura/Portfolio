import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:portfolio/gen/assets.gen.dart';
import 'package:portfolio/resource/dimens.dart';

part 'section_work.g.dart';

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
    ConstrainedBox(
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
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: Dimens.MaxWidthImgInSingle),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: image,
              ),
            )
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
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: Dimens.MaxWidthImg),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: image,
                      ),
                    ),
                  ),
                )
              ],
            )
        ],
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
        Text(
          caption,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            if (googlePlayUrl != null)
              Assets.images.googlePlayBadge.image(height: 64),
            if (googlePlayUrl != null && appStoreUrl != null)
              const SizedBox(width: 8),
            if (appStoreUrl != null)
              Assets.images.appStoreBadge.svg(height: 44),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          'usage',
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'total DL: $totalDlNumber',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'active user: $monthlyUserNumber/month',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          'tech stack',
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: techChips,
        ),
      ],
    );
