// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_field.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class SearchField extends HookConsumerWidget {
  const SearchField({
    Key? key,
    required this.search,
    required this.onChanged,
  }) : super(key: key);

  final String search;

  final void Function(String) onChanged;

  @override
  Widget build(
    BuildContext _context,
    WidgetRef _ref,
  ) =>
      _searchField(
        _context,
        search: search,
        onChanged: onChanged,
      );
}
