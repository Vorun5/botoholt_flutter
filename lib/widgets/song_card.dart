import 'package:botoholt_flutter/data/song.dart';
import 'package:botoholt_flutter/utils/font_size.dart';
import 'package:botoholt_flutter/utils/gaps.dart';
import 'package:botoholt_flutter/widgets/card_container.dart';
import 'package:botoholt_flutter/widgets/link.dart';
import 'package:botoholt_flutter/widgets/song_owner.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'song_card.g.dart';

@swidget
Widget _songCard(BuildContext context, Song song) =>
    CardContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                song.number.toString(),
                style: const TextStyle(
                  fontSize: FontSize.normal,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Gaps.normal,
              Expanded(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxHeight: 100),
                  child: Link(text: song.mediaName, link: song.mediaLink),
                ),
              ),
            ],
          ),
          Gaps.normal,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SongOwner(song.requestedBy),
              Gaps.normal,
              Text(
                song.time,
                style: const TextStyle(
                  fontSize: FontSize.normal,
                ),
              ),
            ],
          )
        ],
      ),
    );
