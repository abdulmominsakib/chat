import 'package:chat/components/filled_outline_button.dart';
import 'package:chat/models/Chat.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(
                kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
            decoration: BoxDecoration(
              color: kPrimaryColor,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 32,
                  color: Color(0xFf087949).withOpacity(0.06),
                ),
              ],
            ),
            child: Row(
              children: [
                FillOutlineButton(
                  press: () {},
                  text: "Recent Message",
                ),
                SizedBox(width: kDefaultPadding),
                FillOutlineButton(
                  isFilled: false,
                  press: () {},
                  text: "Active",
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: kDefaultPadding),
              child: ListView.builder(
                itemCount: chatsData.length,
                itemBuilder: (context, index) => ChatCard(
                  chat: chatsData[index],
                  press: () {},
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ChatCard extends StatelessWidget {
  const ChatCard({
    Key key,
    @required this.press,
    this.chat,
  }) : super(key: key);

  final Chat chat;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding * 0.75),
        child: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage(chat.image),
                ),
                if (chat.isActive)
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        border: Border.all(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            width: 3),
                        shape: BoxShape.circle,
                      ),
                    ),
                  )
              ],
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      chat.name,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 8),
                    Opacity(
                      opacity: 0.64,
                      child: Text(
                        chat.lastMessage,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Opacity(
              opacity: 0.64,
              child: Text(chat.time),
            ),
          ],
        ),
      ),
    );
  }
}
