// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streamer_queue_page.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class StreamerQueuePage extends HookConsumerWidget {
  const StreamerQueuePage({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext _context,
    WidgetRef _ref,
  ) =>
      _streamerQueuePage(
        _context,
        _ref,
      );
}

class _Page extends StatelessWidget {
  const _Page({
    Key? key,
    required this.queue,
  }) : super(key: key);

  final StreamerQueueDto queue;

  @override
  Widget build(BuildContext _context) => __page(
        _context,
        queue: queue,
      );
}
