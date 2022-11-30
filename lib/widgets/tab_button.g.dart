// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tab_button.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class TabButton extends StatelessWidget {
  const TabButton({
    Key? key,
    required this.text,
    required this.color,
    required this.onPressed,
    required this.isFocus,
  }) : super(key: key);

  final String text;

  final Color color;

  final void Function()? onPressed;

  final bool isFocus;

  @override
  Widget build(BuildContext _context) => _tabButton(
        _context,
        text: text,
        color: color,
        onPressed: onPressed,
        isFocus: isFocus,
      );
}
