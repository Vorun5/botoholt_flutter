import 'package:botoholt_flutter/data/song.dart';
import 'package:botoholt_flutter/i18n/strings.g.dart';
import 'package:botoholt_flutter/utils/constants.dart';
import 'package:botoholt_flutter/utils/font_size.dart';
import 'package:botoholt_flutter/widgets/song_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'songs.g.dart';

@hcwidget
Widget _songs(
  BuildContext context, {
  required List<Song> songs,
}) {
  final i18n = Translations.of(context);
  final search = useState('');
  final filteredSongs = songs.where((song) =>
      song.mediaName.toLowerCase().contains(search.value) ||
      song.requestedBy.toLowerCase().contains(search.value));

  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 3, right: 3, bottom: 5),
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Constants.cardBorderRadius),
              borderSide: BorderSide.none,
            ),
            hintText: i18n.form.search,
            hintStyle: const TextStyle(
              fontSize: FontSize.normal,
            ),
            prefixIcon: const Icon(Icons.search),
          ),
          onChanged: (value) => search.value = value.toLowerCase(),
        ),
      ),
      ...filteredSongs
          .map(
            (song) => SongCard(
              song: song,
            ),
          )
          .toList(),
    ],
  );
}
