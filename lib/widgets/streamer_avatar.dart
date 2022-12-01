import 'package:botoholt_flutter/data/dto/streamer_dto.dart';
import 'package:botoholt_flutter/providers/display_mode_provider.dart';
import 'package:botoholt_flutter/utils/font_size.dart';
import 'package:botoholt_flutter/utils/gaps.dart';
import 'package:botoholt_flutter/utils/random_color.dart';
import 'package:botoholt_flutter/utils/svg_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

part 'streamer_avatar.g.dart';

const _avatarIndicatorRadius = 8.0;
const _avatarRadius = 30.0;

@hcwidget
Widget _streamerAvatar(
    BuildContext context, WidgetRef ref, StreamerDto streamer) {
  final isOnline = streamer.streamInfo != null;
  final daUrl = streamer.daUrl;
  final mode = ref.watch(displayModeProvider);

  return Column(
    children: [
      Row(
        children: [
          CircleAvatar(
            radius: _avatarRadius,
            backgroundColor: Colors.blue,
            backgroundImage: NetworkImage(
              streamer.profileImageUrl,
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    radius: _avatarIndicatorRadius,
                    backgroundColor: isOnline ? Colors.green : Colors.amber,
                  ),
                ),
              ],
            ),
          ),
          Gaps.small,
          Expanded(
            child: Row(
              children: [
                Text(
                  '@${streamer.displayName}',
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                  softWrap: false,
                  style: TextStyle(
                    color: randomColor(),
                    fontSize: FontSize.big,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Gap(2),
                if (streamer.broadcasterType == 'partner')
                  SvgPicture.string(
                    SvgIcons.mark,
                    color: Colors.blue,
                    width: 20,
                    height: 20,
                  ),
              ],
            ),
          ),
          if (mode != DisplayMode.mobile)
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                _IconLink(
                  url: 'https://www.twitch.tv/${streamer.login}',
                  svgIcon: SvgIcons.twitch,
                ),
                if (daUrl != null) _IconLink(url: daUrl, svgIcon: SvgIcons.da),
              ],
            ),
        ],
      ),
      if (mode == DisplayMode.mobile)
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _IconLink(
              url: 'https://www.twitch.tv/${streamer.login}',
              svgIcon: SvgIcons.twitch,
            ),
            if (daUrl != null) _IconLink(url: daUrl, svgIcon: SvgIcons.da),
          ],
        ),
    ],
  );
}

@swidget
Widget __iconLink({
  required String url,
  required String svgIcon,
}) =>
    IconButton(
      onPressed: () async {
        final uri = Uri.parse(url);
        if (!await launchUrl(uri)) {
          debugPrint('$url is not valid link');
        }
      },
      icon: SvgPicture.string(
        svgIcon,
        width: 20,
        height: 20,
      ),
    );
