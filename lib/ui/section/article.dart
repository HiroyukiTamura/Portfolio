import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:portfolio/model/article.dart';
import 'package:portfolio/resource/app_theme.dart';
import 'package:portfolio/resource/dimens.dart';
import 'package:portfolio/ui/widget/text.dart';
import 'package:portfolio/util.dart';

part 'article.g.dart';

@swidget
Widget _sectionArticle(BuildContext context) => Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: Dimens.MaxWidthWorks),
        child: Column(
          children: [
            const HeadLine4(text: 'articles'),
            const SizedBox(height: 32),
            ..._articleList.map((it) => _CardItem(article: it)).toList(),
            const SizedBox(height: 8),
            TextButton(
              onPressed: () async => Util.launch(Util.URL_QIITA),
              child: const Text('more'),
            )
          ],
        ),
      ),
    );

@swidget
Widget __cardItem(
  BuildContext context, {
  required Article article,
}) =>
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          color: AppTheme.kBgGray,
          borderRadius: BorderRadius.circular(16),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () async => Util.launch(article.link),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 36),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(article.title),
                const SizedBox(height: 8),
                RichText(
                  text: TextSpan(
                    children: [
                      const WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: _CaptionIcon(icon: Icons.sell),
                      ),
                      const WidgetSpan(
                        child: SizedBox(width: 4),
                      ),
                      TextSpan(
                        style: Theme.of(context).textTheme.bodyText1,
                        text: article.tags.join(', '),
                      ),
                      const WidgetSpan(child: SizedBox(width: 8)),
                      const WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: _CaptionIcon(icon: Icons.favorite),
                      ),
                      const WidgetSpan(child: SizedBox(width: 4)),
                      TextSpan(
                        style: Theme.of(context).textTheme.bodyText1,
                        text: article.fav.toString(),
                      ),
                    ],
                  ),
                )
              ],
            ),
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
  ),
  Article(
    title: 'RiverpodはStateNotifierのLocatorMixinをサポートしていない',
    tags: ['Dart', 'Flutter', 'Riverpod', 'provider', 'StateNotifier'],
    fav: 12,
    link: 'https://qiita.com/HiroyukiTamura/items/828bff799bdfed1ceacd',
  ),
  Article(
    title: '[Android]インストラメント化テストとローカルテストでコードを共有するには',
    tags: ['Android', 'Kotlin', 'JUnit', 'gradle'],
    fav: 1,
    link: 'https://qiita.com/HiroyukiTamura/items/88ef8832955617edcdd1',
  )
];
