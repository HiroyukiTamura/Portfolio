// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class SectionWork extends StatelessWidget {
  const SectionWork({
    Key? key,
    required this.singlePain,
    required this.title,
    required this.caption,
    required this.totalDlNumber,
    required this.monthlyUserNumber,
    required this.techChips,
    required this.image,
    this.googlePlayUrl,
    this.appStoreUrl,
  }) : super(key: key);

  final bool singlePain;

  final String title;

  final String caption;

  final String totalDlNumber;

  final String monthlyUserNumber;

  final List<Widget> techChips;

  final Widget image;

  final String? googlePlayUrl;

  final String? appStoreUrl;

  @override
  Widget build(BuildContext _context) => _sectionWork(
        _context,
        singlePain: singlePain,
        title: title,
        caption: caption,
        totalDlNumber: totalDlNumber,
        monthlyUserNumber: monthlyUserNumber,
        techChips: techChips,
        image: image,
        googlePlayUrl: googlePlayUrl,
        appStoreUrl: appStoreUrl,
      );
}

class _DescBlock extends StatelessWidget {
  const _DescBlock({
    Key? key,
    required this.title,
    required this.caption,
    required this.totalDlNumber,
    required this.monthlyUserNumber,
    required this.techChips,
    required this.googlePlayUrl,
    required this.appStoreUrl,
  }) : super(key: key);

  final String title;

  final String caption;

  final String totalDlNumber;

  final String monthlyUserNumber;

  final List<Widget> techChips;

  final String? googlePlayUrl;

  final String? appStoreUrl;

  @override
  Widget build(BuildContext _context) => __descBlock(
        _context,
        title: title,
        caption: caption,
        totalDlNumber: totalDlNumber,
        monthlyUserNumber: monthlyUserNumber,
        techChips: techChips,
        googlePlayUrl: googlePlayUrl,
        appStoreUrl: appStoreUrl,
      );
}

class _Image extends StatelessWidget {
  const _Image({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext _context) => __image(child: child);
}
