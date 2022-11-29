import 'package:botoholt_flutter/pages/streamer_page/streamer_error.dart';
import 'package:botoholt_flutter/providers/future/streamers_provider.dart';
import 'package:botoholt_flutter/utils/gaps.dart';
import 'package:botoholt_flutter/utils/paddings.dart';
import 'package:botoholt_flutter/widgets/app_scaffold.dart';
import 'package:botoholt_flutter/widgets/streamer_profile_card.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'home_page.g.dart';

@hcwidget
Widget _homePage(BuildContext context, WidgetRef ref) {
  final streamers = ref.watch(streamersProvider);

  return AppScaffold(
    body: streamers.when(
      data: (data) {
        data.sort((a, b) {
          final aStreamInfo = a.streamInfo;
          final bStreamInfo = b.streamInfo;
          if (aStreamInfo != null) {
            if (bStreamInfo == null) {
              return -1;
            }
            return aStreamInfo.viewerCount.compareTo(bStreamInfo.viewerCount) *
                -1;
          }
          return 1;
        });

        return ListView(
          padding: const EdgeInsets.only(right: Paddings.small),
          children: [
            Gaps.small,
            ...data.map(StreamerProfileCard.new).toList(),
             Gaps.small,
          ],
        );
      },
      error: (error, _) => const StreamerError(),
      loading: () => const CircularProgressIndicator(),
    ),
  );
}
