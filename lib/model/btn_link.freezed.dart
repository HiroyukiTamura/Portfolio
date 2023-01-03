// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'btn_link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BtnLink {
  String get url => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BtnLinkCopyWith<BtnLink> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BtnLinkCopyWith<$Res> {
  factory $BtnLinkCopyWith(BtnLink value, $Res Function(BtnLink) then) =
      _$BtnLinkCopyWithImpl<$Res, BtnLink>;
  @useResult
  $Res call({String url, String value});
}

/// @nodoc
class _$BtnLinkCopyWithImpl<$Res, $Val extends BtnLink>
    implements $BtnLinkCopyWith<$Res> {
  _$BtnLinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BtnLinkCopyWith<$Res> implements $BtnLinkCopyWith<$Res> {
  factory _$$_BtnLinkCopyWith(
          _$_BtnLink value, $Res Function(_$_BtnLink) then) =
      __$$_BtnLinkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String value});
}

/// @nodoc
class __$$_BtnLinkCopyWithImpl<$Res>
    extends _$BtnLinkCopyWithImpl<$Res, _$_BtnLink>
    implements _$$_BtnLinkCopyWith<$Res> {
  __$$_BtnLinkCopyWithImpl(_$_BtnLink _value, $Res Function(_$_BtnLink) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? value = null,
  }) {
    return _then(_$_BtnLink(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BtnLink implements _BtnLink {
  const _$_BtnLink({required this.url, required this.value});

  @override
  final String url;
  @override
  final String value;

  @override
  String toString() {
    return 'BtnLink(url: $url, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BtnLink &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BtnLinkCopyWith<_$_BtnLink> get copyWith =>
      __$$_BtnLinkCopyWithImpl<_$_BtnLink>(this, _$identity);
}

abstract class _BtnLink implements BtnLink {
  const factory _BtnLink(
      {required final String url, required final String value}) = _$_BtnLink;

  @override
  String get url;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_BtnLinkCopyWith<_$_BtnLink> get copyWith =>
      throw _privateConstructorUsedError;
}
