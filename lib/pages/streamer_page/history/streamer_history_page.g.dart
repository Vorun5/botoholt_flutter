// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streamer_history_page.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class StreamerHistoryPage extends HookConsumerWidget {
  const StreamerHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext _context,
    WidgetRef _ref,
  ) =>
      _streamerHistoryPage(
        _context,
        _ref,
      );
}

class _Page extends StatelessWidget {
  const _Page({
    Key? key,
    required this.history,
  }) : super(key: key);

  final List<HistorySongDto> history;

  @override
  Widget build(BuildContext _context) => __page(
        _context,
        history: history,
      );
}
