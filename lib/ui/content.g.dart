// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext _context) => _root(_context);
}

class _SkillChipIcon extends StatelessWidget {
  const _SkillChipIcon({
    Key? key,
    required this.label,
    required this.icon,
    required this.iconColor,
  }) : super(key: key);

  final String label;

  final IconData icon;

  final Color iconColor;

  @override
  Widget build(BuildContext _context) => __skillChipIcon(
        label: label,
        icon: icon,
        iconColor: iconColor,
      );
}

class _SkillChip extends StatelessWidget {
  const _SkillChip({
    Key? key,
    required this.label,
    required this.avatar,
  }) : super(key: key);

  final String label;

  final Widget avatar;

  @override
  Widget build(BuildContext _context) => __skillChip(
        label: label,
        avatar: avatar,
      );
}
