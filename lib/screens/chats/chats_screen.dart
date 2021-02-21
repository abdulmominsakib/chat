import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'components/body.dart';

class ChatsScreen extends StatefulWidget {
  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: buildBottomNavigationBar(context),
    );
  }

  BottomNavigationBar buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: (value) {
        setState(() {
          _selectedIndex = value;
        });
      },
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/chat.svg",
            color:
                Theme.of(context).textTheme.bodyText1.color.withOpacity(0.32),
          ),
          activeIcon: SvgPicture.asset("assets/icons/chat.svg"),
          label: "Chats",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/people.svg",
            color:
                Theme.of(context).textTheme.bodyText1.color.withOpacity(0.32),
          ),
          activeIcon: SvgPicture.asset(
            "assets/icons/people.svg",
            color: Theme.of(context).primaryColor,
          ),
          label: "People",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/calls.svg",
            color:
                Theme.of(context).textTheme.bodyText1.color.withOpacity(0.32),
          ),
          activeIcon: SvgPicture.asset(
            "assets/icons/calls.svg",
            color: Theme.of(context).primaryColor,
          ),
          label: "Calls",
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            radius: 14,
            backgroundImage: AssetImage("assets/images/user_2.png"),
          ),
          label: "Prifile",
        ),
      ],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text("Chats"),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        )
      ],
      automaticallyImplyLeading: false,
    );
  }
}
