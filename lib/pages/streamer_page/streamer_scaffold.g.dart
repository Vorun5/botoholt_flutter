// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streamer_scaffold.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class StreamerScaffold extends HookConsumerWidget {
  const StreamerScaffold({
    Key? key,
    required this.body,
  }) : super(key: key);

  final Widget? body;

  @override
  Widget build(
    BuildContext _context,
    WidgetRef _ref,
  ) =>
      _streamerScaffold(
        _context,
        _ref,
        body: body,
      );
}

class _Page extends StatelessWidget {
  const _Page({
    Key? key,
    required this.streamer,
    required this.body,
  }) : super(key: key);

  final StreamerDto streamer;

  final Widget? body;

  @override
  Widget build(BuildContext _context) => __page(
        _context,
        streamer: streamer,
        body: body,
      );
}

class _TabButton extends StatelessWidget {
  const _TabButton({
    Key? key,
    required this.text,
    required this.color,
    required this.onPressed,
  }) : super(key: key);

  final String text;

  final Color color;

  final void Function()? onPressed;

  @override
  Widget build(BuildContext _context) => __tabButton(
        text: text,
        color: color,
        onPressed: onPressed,
      );
}
