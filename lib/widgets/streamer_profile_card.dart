import 'package:botoholt_flutter/data/dto/streamer_dto.dart';
import 'package:botoholt_flutter/utils/constants.dart';
import 'package:botoholt_flutter/utils/font_size.dart';
import 'package:botoholt_flutter/utils/gaps.dart';
import 'package:botoholt_flutter/utils/paddings.dart';
import 'package:botoholt_flutter/widgets/streamer_avatar.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

part 'streamer_profile_card.g.dart';

@swidget
Widget _streamerProfileCard(BuildContext context, StreamerDto streamer) {
  final streamInfo = streamer.streamInfo;

  return Card(
    elevation: 0,
    color: Theme.of(context).colorScheme.surfaceVariant,
    child: InkWell(
      borderRadius: BorderRadius.circular(Constants.cardBorderRadius),
      onTap: () async {
        final url = Uri.parse('https://www.twitch.tv/${streamer.login}');
        if (!await launchUrl(url)) {
          debugPrint('Could not launch $url');
        }
      },
      child: Container(
        padding: const EdgeInsets.all(Paddings.normal),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamerAvatar(streamer),
            if (streamInfo != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gaps.small,
                  Text(
                    streamInfo.title,
                    style: const TextStyle(
                      fontSize: FontSize.normal,
                    ),
                  ),
                  Gaps.small,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        streamInfo.gameName,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.purple,
                        ),
                      ),
                     Row(
                      children: [
                      const Icon(Icons.person_2_outlined, color: Colors.red,),
                       Text(
                        streamInfo.viewerCount.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: FontSize.big - 2,
                          color: Colors.red,
                        ),
                      ),
                     ],),
                    ],
                  )
                ],
              )
          ],
        ),
      ),
    ),
  );
}
