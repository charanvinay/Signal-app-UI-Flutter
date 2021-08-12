import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:signal/constants.dart';
import 'package:signal/models/Chat.dart';
import 'package:signal/screens/chats/components/body.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appMethod(),
      body: Body(),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.white,
              child: SvgPicture.asset("assets/icons/camera.svg")),
          SizedBox(height: 20),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: kPrimaryColor,
            child: SvgPicture.asset(
              "assets/icons/edit-2.svg",
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  AppBar appMethod() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leadingWidth: 90,
      titleSpacing: 0,
      title: Text(
        "Signal",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
      leading: CircleAvatar(
        radius: 5,
        backgroundColor: Colors.transparent,
        child: Image.asset(
          chatsData[3].image,
          width: 30,
          height: 30,
        ),
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () {},
        ),
        popupMenuButtonMethod()
      ],
    );
  }

  PopupMenuButton<String> popupMenuButtonMethod() {
    return PopupMenuButton<String>(
      icon: SvgPicture.asset("assets/icons/more-vertical.svg"),
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem(child: Text("New group"), value: "New group"),
          PopupMenuItem(child: Text("Marked as read"), value: "Marked as read"),
          PopupMenuItem(child: Text("Invite friends"), value: "Invite friends"),
          PopupMenuItem(child: Text("Settings"), value: "Settings"),
        ];
      },
    );
  }
}
