import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:portfolio/model/article.dart';
import 'package:portfolio/resource/dimens.dart';
import 'package:portfolio/resource/theme_colors.dart';
import 'package:portfolio/ui/widget/text.dart';

part 'section_article.g.dart';

@swidget
Widget _sectionArticle(BuildContext context) => ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: Dimens.MaxWidthWorks),
      child: Column(
        children: [
          const HeadLine4(text: 'articles'),
          const SizedBox(height: 32),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: _articleList.map((it) => _CardItem(article: it)).toList(),
          ),
        ],
      ),
    );

@swidget
Widget __cardItem(
  BuildContext context, {
  required Article article,
}) =>
    Container(
      decoration: BoxDecoration(
        color: ThemeColors.kBgGray,
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          // todo impl
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(article.title),
              const SizedBox(height: 8),
              Row(
                children: [
                  const _CaptionIcon(icon: Icons.sell),
                  const SizedBox(width: 4),
                  BodyText1(
                    text: article.tags.join(', '),
                  ),
                  const SizedBox(width: 8),
                  const _CaptionIcon(icon: Icons.favorite),
                  const SizedBox(width: 4),
                  BodyText1(
                    text: article.fav.toString(),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );

@swidget
Widget __captionIcon(
  BuildContext context, {
  required IconData icon,
}) =>
    Icon(
      icon,
      color: Theme.of(context).textTheme.bodyText1?.color,
      size: 14,
    );

const _articleList = [
  Article(
    title:
        '[Riverpod] StateNotifierのstateが特定の値のときだけWidgetをビルドするには・過去のStateを取得するには',
    tags: ['Dart', 'Flutter', 'Riverpod', 'freezed'],
    fav: 7,
    link: 'https://qiita.com/HiroyukiTamura/items/db5c862d4df6279b4681',
  )
];
