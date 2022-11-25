import 'package:botoholt_flutter/data/dto/streamer_dto.dart';
import 'package:botoholt_flutter/utils/font_size.dart';
import 'package:botoholt_flutter/utils/gaps.dart';
import 'package:botoholt_flutter/utils/random_color.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'streamer_avatar.g.dart';

const _avatarIndicatorRadius = 8.0;
const _avatarRadius = 30.0;

@swidget
Widget _streamerAvatar(StreamerDto streamer) {
  final isOnline = streamer.streamInfo != null;

  return Row(
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
        child: Text(
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
      ),
    ],
  );
}
