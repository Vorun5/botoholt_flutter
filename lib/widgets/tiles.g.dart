// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tiles.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class Tiles extends HookConsumerWidget {
  const Tiles({
    Key? key,
    required this.title,
    required this.icon,
    required this.children,
  }) : super(key: key);

  final String title;

  final IconData icon;

  final List<Widget> children;

  @override
  Widget build(
    BuildContext _context,
    WidgetRef _ref,
  ) =>
      _tiles(
        _ref,
        title: title,
        icon: icon,
        children: children,
      );
}

class Tile extends StatelessWidget {
  const Tile({
    Key? key,
    this.title,
    this.icon,
    this.child,
    this.onTap,
    this.textAlign,
  }) : super(key: key);

  final String? title;

  final IconData? icon;

  final Widget? child;

  final void Function()? onTap;

  final TextAlign? textAlign;

  @override
  Widget build(BuildContext _context) => _tile(
        title: title,
        icon: icon,
        child: child,
        onTap: onTap,
        textAlign: textAlign,
      );
}
