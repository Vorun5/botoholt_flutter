import 'package:botoholt_flutter/data/song.dart';
import 'package:botoholt_flutter/utils/paddings.dart';
import 'package:botoholt_flutter/widgets/search_field.dart';
import 'package:botoholt_flutter/widgets/song_card.dart';
import 'package:collection/collection.dart';
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
  final search = useState('');
  final filteredSongs = songs
      .mapIndexed((index, song) => song.copyWith(number: index + 1))
      .where((song) =>
          song.mediaName.toLowerCase().contains(search.value) ||
          song.requestedBy.toLowerCase().contains(search.value));

  return Column(
    children: [
      Padding(
        padding:
            const EdgeInsets.only(left: 3, right: 3, bottom: Paddings.tiny),
        child: SearchField(
          search: search.value,
          onChanged: (value) => search.value = value.toLowerCase(),
        ),
      ),
      ...filteredSongs.map((song) => SongCard(song)).toList(),
    ],
  );
}
