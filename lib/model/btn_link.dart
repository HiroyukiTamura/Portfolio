import 'package:freezed_annotation/freezed_annotation.dart';

part 'btn_link.freezed.dart';

@freezed
class BtnLink with _$BtnLink {
  const factory BtnLink({
    required String url,
    required String value,
  }) = _BtnLink;
}