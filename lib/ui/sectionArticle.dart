import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:portfolio/model/article.dart';
import 'package:portfolio/resource/dimens.dart';
import 'package:portfolio/resource/theme_colors.dart';

part 'sectionArticle.g.dart';

@swidget
Widget _sectionArticle(BuildContext context) => ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: Dimens.MaxWidthWorks),
      child: Column(
        children: [
          const SizedBox(height: 128),
          Text(
            'articles',
            style: Theme.of(context).textTheme.headline4,
          ),
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
    InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        decoration: BoxDecoration(
          color: ThemeColors.kBgGray,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(article.title),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(
                  Icons.sell,
                  color: Theme.of(context).textTheme.bodyText1?.color,
                  size: 14,
                ),
                SizedBox(width: 4),
                Text(
                  article.tags.join(', '),
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SizedBox(width: 8),
                Icon(
                  Icons.favorite,
                  color: Theme.of(context).textTheme.bodyText1?.color,
                  size: 14,
                ),
                SizedBox(width: 4),
                Text(
                  article.fav.toString(),
                  style: Theme.of(context).textTheme.bodyText1,
                )
              ],
            ),
          ],
        ),
      ),
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
