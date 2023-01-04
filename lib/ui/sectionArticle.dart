part 'sectionArticle.g.dart';

@swidget
Widget _sectionArticle() {
  Column(children: [
    const SizedBox(height: 128),
    Text(
      'articles',
      style: Theme.of(context).textTheme.headline4,
    ),
    const SizedBox(height: 32),
    Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        Container(
          height: 96,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  '[Riverpod] StateNotifierのstateが特定の値のときだけWidgetをビルドするには・過去のStateを取得するには'),
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
                    'Dart, Flutter, Riverpod, freezed',
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
                    '7',
                    style: Theme.of(context).textTheme.bodyText1,
                  )
                ],
              ),
            ],
          ),
        )
      ],
    ),
  ])
}