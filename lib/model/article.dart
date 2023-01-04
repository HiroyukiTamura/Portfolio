import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';

@freezed
class Article with _$Article {
  const factory Article({
    required String title,
    required List<String> tags,
    required int fav,
    required String link,
  }) = _Article;
}
