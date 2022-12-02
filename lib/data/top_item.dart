import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_item.freezed.dart';
part 'top_item.g.dart';

@freezed
class TopItem with _$TopItem {
  const factory TopItem({
    required String name,
    required int count,
    required String? link,
    required int? number,
  }) = _TopItem;

  factory TopItem.fromJson(Map<String, Object?> json) =>
      _$TopItemFromJson(json);
}
