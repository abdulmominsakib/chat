import 'package:chat/models/ChatMessage.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'audio_message.dart';
import 'message_status_dot.dart';
import 'text_message.dart';
import 'video_message.dart';

class Message extends StatelessWidget {
  final ChatMessage message;
  const Message({
    Key key,
    @required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget messageContant(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage(text: message.text);
          break;
        case ChatMessageType.audio:
          return AudioMessage();
          break;
        case ChatMessageType.video:
          return VideoMessage();
          break;
        default:
          return SizedBox();
      }
    }

    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding),
      child: Row(
        mainAxisAlignment:
            message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isSender) ...[
            CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage("assets/images/user_2.png"),
            ),
            SizedBox(width: kDefaultPadding / 2),
          ],
          messageContant(message),
          SizedBox(width: kDefaultPadding / 4),
          if (message.isSender)
            MessageStatusDot(messageStatus: message.messageStatus)
        ],
      ),
    );
  }
}
