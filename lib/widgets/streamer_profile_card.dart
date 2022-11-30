import 'package:botoholt_flutter/data/dto/streamer_dto.dart';
import 'package:botoholt_flutter/providers/display_mode_provider.dart';
import 'package:botoholt_flutter/utils/constants.dart';
import 'package:botoholt_flutter/utils/font_size.dart';
import 'package:botoholt_flutter/utils/gaps.dart';
import 'package:botoholt_flutter/utils/paddings.dart';
import 'package:botoholt_flutter/widgets/streamer_avatar.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'streamer_profile_card.g.dart';

@hcwidget
Widget _streamerProfileCard(BuildContext context, WidgetRef ref, StreamerDto streamer) {
  final streamInfo = streamer.streamInfo;
  final mode = ref.watch(displayModeProvider);

  return Card(
    elevation: 0,
    color: Theme.of(context).colorScheme.surfaceVariant,
    child: InkWell(
      borderRadius: BorderRadius.circular(Constants.cardBorderRadius),
      onTap: () => context.goNamed('streamer', params: {'name': streamer.login}),
      child: Container(
        padding:  EdgeInsets.all(mode == DisplayMode.mobile ?  Paddings.small : Paddings.normal),
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
                          const Icon(
                            Icons.person_2_outlined,
                            color: Colors.red,
                          ),
                          Text(
                            streamInfo.viewerCount.toString(),
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: FontSize.big - 2,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
          ],
        ),
      ),
    ),
  );
}
