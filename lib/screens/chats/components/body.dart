import 'package:chat/components/filled_outline_button.dart';
import 'package:chat/models/Chat.dart';
import 'package:chat/screens/massage/massage_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chat_card.dart';

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
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MassageScreen(),
                      ),
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
