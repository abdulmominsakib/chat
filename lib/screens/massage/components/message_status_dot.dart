import 'package:chat/models/ChatMessage.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class MessageStatusDot extends StatelessWidget {
  const MessageStatusDot({
    Key key,
    @required this.messageStatus,
  }) : super(key: key);

  final MessageStatus messageStatus;

  @override
  Widget build(BuildContext context) {
    Color dotColor(MessageStatus messageStatus) {
      switch (messageStatus) {
        case MessageStatus.not_sent:
          return kErrorColor;
          break;
        case MessageStatus.not_view:
          return Theme.of(context).textTheme.bodyText1.color.withOpacity(0.1);
          break;
        case MessageStatus.viewed:
          return kPrimaryColor;
          break;
        default:
          return Colors.transparent;
      }
    }

    return Container(
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: dotColor(messageStatus),
        shape: BoxShape.circle,
      ),
      child: Icon(
        messageStatus == MessageStatus.not_sent ? Icons.close : Icons.done,
        size: 8,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}
