import 'package:botoholt_flutter/data/dto/history_song_dto.dart';
import 'package:botoholt_flutter/i18n/strings.g.dart';
import 'package:botoholt_flutter/utils/capitalize.dart';
import 'package:botoholt_flutter/utils/font_size.dart';
import 'package:botoholt_flutter/utils/gaps.dart';
import 'package:botoholt_flutter/utils/paddings.dart';
import 'package:botoholt_flutter/utils/random_color.dart';
import 'package:botoholt_flutter/widgets/hoverable.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

part 'history_song_card.g.dart';

@swidget
Widget _historySongCard(
  BuildContext context, {
  required HistorySongDto song,
}) {
  final date = DateTime.parse(song.timeFrom);
  final locale = LocaleSettings.currentLocale.languageCode;

  return Card(
    elevation: 0,
    color: Theme.of(context).colorScheme.onInverseSurface,
    child: Container(
      padding: const EdgeInsets.all(Paddings.normal),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hoverable(
            child: (isHovered) => GestureDetector(
              onTap: () async {
                final url = Uri.parse(song.mediaLink);
                if (!await launchUrl(url)) {
                  debugPrint('${song.mediaLink} is not valid link');
                }
              },
              child: Text(
                song.mediaName,
                style: TextStyle(
                  decoration: isHovered
                      ? TextDecoration.underline
                      : TextDecoration.none,
                  fontSize: FontSize.normal,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          Gaps.normal,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  song.requestedBy,
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                  softWrap: false,
                  style: TextStyle(
                    fontSize: FontSize.normal,
                    color: randomColor(),
                  ),
                ),
              ),
              Gaps.normal,
              Text(
                '${DateFormat.Hm().format(date)} ${capitalize(DateFormat.EEEE(locale).format(date))}',
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
}
