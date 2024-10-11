/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $ImagesGen {
  const $ImagesGen();

  /// File path: images/admob.svg
  SvgGenImage get admob => const SvgGenImage('images/admob.svg');

  /// File path: images/algolia.svg
  SvgGenImage get algolia => const SvgGenImage('images/algolia.svg');

  /// File path: images/app_store_badge.svg
  SvgGenImage get appStoreBadge =>
      const SvgGenImage('images/app_store_badge.svg');

  /// File path: images/dart.svg
  SvgGenImage get dart => const SvgGenImage('images/dart.svg');

  /// File path: images/figma.svg
  SvgGenImage get figma => const SvgGenImage('images/figma.svg');

  /// File path: images/firebase.png
  AssetGenImage get firebase => const AssetGenImage('images/firebase.png');

  /// File path: images/github.svg
  SvgGenImage get github => const SvgGenImage('images/github.svg');

  /// File path: images/google_play_badge.png
  AssetGenImage get googlePlayBadge =>
      const AssetGenImage('images/google_play_badge.png');

  /// File path: images/itsumuso_cover.webp
  AssetGenImage get itsumusoCover =>
      const AssetGenImage('images/itsumuso_cover.webp');

  /// File path: images/java.svg
  SvgGenImage get java => const SvgGenImage('images/java.svg');

  /// File path: images/jetpack_compose.png
  AssetGenImage get jetpackCompose =>
      const AssetGenImage('images/jetpack_compose.png');

  /// File path: images/jira.png
  AssetGenImage get jira => const AssetGenImage('images/jira.png');

  /// File path: images/kotlin.svg
  SvgGenImage get kotlin => const SvgGenImage('images/kotlin.svg');

  /// File path: images/node_js.svg
  SvgGenImage get nodeJs => const SvgGenImage('images/node_js.svg');

  /// File path: images/qiita.png
  AssetGenImage get qiita => const AssetGenImage('images/qiita.png');

  /// File path: images/radiko_cover.png
  AssetGenImage get radikoCover =>
      const AssetGenImage('images/radiko_cover.png');

  /// File path: images/realm.png
  AssetGenImage get realm => const AssetGenImage('images/realm.png');

  /// File path: images/riverpod.svg
  SvgGenImage get riverpod => const SvgGenImage('images/riverpod.svg');

  /// File path: images/train_cover.png
  AssetGenImage get trainCover => const AssetGenImage('images/train_cover.png');

  /// File path: images/typescript.svg
  SvgGenImage get typescript => const SvgGenImage('images/typescript.svg');

  /// List of all assets
  List<dynamic> get values => [
        admob,
        algolia,
        appStoreBadge,
        dart,
        figma,
        firebase,
        github,
        googlePlayBadge,
        itsumusoCover,
        java,
        jetpackCompose,
        jira,
        kotlin,
        nodeJs,
        qiita,
        radikoCover,
        realm,
        riverpod,
        trainCover,
        typescript
      ];
}

class Assets {
  Assets._();

  static const $ImagesGen images = $ImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
