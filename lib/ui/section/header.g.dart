// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'header.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class SectionHeader extends StatelessWidget {
  const SectionHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext _context) => _sectionHeader(_context);
}

class _IconBtn extends StatelessWidget {
  const _IconBtn({
    Key? key,
    required this.icon,
    required this.iconSize,
    required this.onPressed,
  }) : super(key: key);

  final IconData icon;

  final double iconSize;

  final void Function() onPressed;

  @override
  Widget build(BuildContext _context) => __iconBtn(
        _context,
        icon: icon,
        iconSize: iconSize,
        onPressed: onPressed,
      );
}

class _WidgetBtn extends StatelessWidget {
  const _WidgetBtn({
    Key? key,
    required this.child,
    required this.onPressed,
  }) : super(key: key);

  final Widget child;

  final void Function() onPressed;

  @override
  Widget build(BuildContext _context) => __widgetBtn(
        _context,
        child: child,
        onPressed: onPressed,
      );
}
