// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streamer_avatar.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class StreamerAvatar extends HookConsumerWidget {
  const StreamerAvatar(
    this.streamer, {
    Key? key,
  }) : super(key: key);

  final StreamerDto streamer;

  @override
  Widget build(
    BuildContext _context,
    WidgetRef _ref,
  ) =>
      _streamerAvatar(
        _context,
        _ref,
        streamer,
      );
}

class _IconLink extends StatelessWidget {
  const _IconLink({
    Key? key,
    required this.url,
    required this.svgIcon,
  }) : super(key: key);

  final String url;

  final String svgIcon;

  @override
  Widget build(BuildContext _context) => __iconLink(
        url: url,
        svgIcon: svgIcon,
      );
}
