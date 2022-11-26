import 'package:botoholt_flutter/data/song.dart';
import 'package:botoholt_flutter/utils/font_size.dart';
import 'package:botoholt_flutter/utils/gaps.dart';
import 'package:botoholt_flutter/utils/paddings.dart';
import 'package:botoholt_flutter/widgets/link.dart';
import 'package:botoholt_flutter/widgets/song_owner.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';


part 'song_card.g.dart';

@swidget
Widget _songCard(
  BuildContext context, {
  required Song song,
}) => Card(
    elevation: 0,
    color: Theme.of(context).colorScheme.onInverseSurface,
    child: Container(
      padding: const EdgeInsets.all(Paddings.normal),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Link(text: song.mediaName, link: song.mediaLink),
          Gaps.normal,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SongOwner(song.requestedBy),
              Gaps.normal,
              Text(
                song.time,
                style: TextStyle(
                  fontSize: FontSize.normal,
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );

