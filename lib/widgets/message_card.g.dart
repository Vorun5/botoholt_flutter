// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_card.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class MessageCard extends HookConsumerWidget {
  const MessageCard({
    Key? key,
    this.reverse = false,
    required this.imagePath,
    required this.message,
  }) : super(key: key);

  final bool reverse;

  final String imagePath;

  final String message;

  @override
  Widget build(
    BuildContext _context,
    WidgetRef _ref,
  ) =>
      _messageCard(
        _context,
        _ref,
        reverse: reverse,
        imagePath: imagePath,
        message: message,
      );
}
