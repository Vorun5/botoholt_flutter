// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streamer_scaffold.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class StreamerScaffold extends HookConsumerWidget {
  const StreamerScaffold({
    Key? key,
    this.location = '',
    this.body,
  }) : super(key: key);

  final String location;

  final List<Widget>? body;

  @override
  Widget build(
    BuildContext _context,
    WidgetRef _ref,
  ) =>
      _streamerScaffold(
        _context,
        _ref,
        location: location,
        body: body,
      );
}

class _Page extends StatelessWidget {
  const _Page({
    Key? key,
    required this.streamer,
    required this.body,
    required this.location,
  }) : super(key: key);

  final StreamerDto streamer;

  final List<Widget>? body;

  final String location;

  @override
  Widget build(BuildContext _context) => __page(
        _context,
        streamer: streamer,
        body: body,
        location: location,
      );
}
