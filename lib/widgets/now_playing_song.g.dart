// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'now_playing_song.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class NowPlayingSong extends HookConsumerWidget {
  const NowPlayingSong({
    Key? key,
    required this.queue,
  }) : super(key: key);

  final StreamerQueueDto queue;

  @override
  Widget build(
    BuildContext _context,
    WidgetRef _ref,
  ) =>
      _nowPlayingSong(
        _context,
        _ref,
        queue: queue,
      );
}

class _OwnerAndDuration extends StatelessWidget {
  const _OwnerAndDuration({
    Key? key,
    required this.owner,
    required this.duration,
    required this.nowPlayingDuration,
    required this.nowPlayingStartsFrom,
  }) : super(key: key);

  final String owner;

  final int duration;

  final int? nowPlayingDuration;

  final int? nowPlayingStartsFrom;

  @override
  Widget build(BuildContext _context) => __ownerAndDuration(
        _context,
        owner: owner,
        duration: duration,
        nowPlayingDuration: nowPlayingDuration,
        nowPlayingStartsFrom: nowPlayingStartsFrom,
      );
}
