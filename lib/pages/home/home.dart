import 'package:botoholt_flutter/providers/future/streamers_provider.dart';
import 'package:botoholt_flutter/utils/paddings.dart';
import 'package:botoholt_flutter/widgets/app_scaffold.dart';
import 'package:botoholt_flutter/widgets/streamer_profile_card.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'home.g.dart';

@hcwidget
Widget _home(BuildContext context, WidgetRef ref) {
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
           return  aStreamInfo.viewerCount.compareTo(bStreamInfo.viewerCount);
          }
          return 1;
        });
        return Center(
          child: Container(
            padding: EdgeInsets.all(Paddings.small),
            constraints: const BoxConstraints(
              maxWidth: 800,
            ),
            child: ListView(
              children: data.map(StreamerProfileCard.new).toList(),
            ),
          ),
        );
      },
      error: (error, _) => const Center(child: Text('Error')),
      loading: () => const Center(child: CircularProgressIndicator()),
    ),
  );
}
