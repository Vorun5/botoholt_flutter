import 'package:botoholt_flutter/data/dto/streamer_dto.dart';
import 'package:botoholt_flutter/i18n/strings.g.dart';
import 'package:botoholt_flutter/providers/future/streamer_provider.dart';
import 'package:botoholt_flutter/utils/font_size.dart';
import 'package:botoholt_flutter/utils/gaps.dart';
import 'package:botoholt_flutter/utils/paddings.dart';
import 'package:botoholt_flutter/widgets/app_scaffold.dart';
import 'package:botoholt_flutter/widgets/streamer_profile_card.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'streamer_scaffold.g.dart';

@hcwidget
Widget _streamerScaffold(
  BuildContext context,
  WidgetRef ref, {
  required Widget? body,
}) {
  final i18n = Translations.of(context);
  final streamer = ref.watch(streamerProvider);

  return AppScaffold(
    body: streamer.when(
      data: (data) {
        if (data == null) {
          return Text(
            i18n.notConnectedToBotoholt,
            style: const TextStyle(fontSize: FontSize.big),
          );
        }
        return _Page(
          streamer: data,
          body: body,
        );
      },
      error: (error, _) => Text(
        i18n.somethingWentWrong,
        style: const TextStyle(fontSize: FontSize.big),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    ),
  );
}

@swidget
Widget __page(
  BuildContext context, {
  required StreamerDto streamer,
  required Widget? body,
}) {
  final i18n = Translations.of(context);
  return ListView(
    children: [
      StreamerProfileCard(streamer),
      Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: Paddings.small - 5, vertical: Paddings.small),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _TabButton(
                text: i18n.streamer.tabs.queue,
                color: const Color.fromARGB(255, 108, 200, 228),
                onPressed: () => context.goNamed(
                  'queue',
                  params: {'name': streamer.login},
                ),
              ),
              Gaps.small,
              _TabButton(
                text: i18n.streamer.tabs.history,
                color: const Color.fromARGB(255, 149, 116, 239),
                onPressed: () => context.goNamed(
                  'history',
                  params: {'name': streamer.login},
                ),
              ),
              Gaps.small,
              _TabButton(
                text: i18n.streamer.tabs.topDJs,
                color: const Color.fromARGB(255, 240, 113, 74),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      if (body != null) body,
    ],
  );
}

@swidget
Widget __tabButton({
  required String text,
  required Color color,
  required void Function()? onPressed,
}) =>
    TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: color,
        alignment: Alignment.center,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          right: Paddings.small,
          left: Paddings.small,
          top: Paddings.small - 5,
          bottom: Paddings.small - 3,
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: FontSize.normal - 1,
          ),
        ),
      ),
    );
