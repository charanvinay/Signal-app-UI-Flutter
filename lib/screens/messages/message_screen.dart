import 'package:flutter_svg/flutter_svg.dart';
import 'package:signal/constants.dart';
import 'package:signal/models/Chat.dart';
import 'package:signal/screens/messages/components/body.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key, required this.chat}) : super(key: key);

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarMethod(context),
      body: Body(chat: chat),
    );
  }

  AppBar appbarMethod(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      titleSpacing: 0,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back),
        color: Colors.black87,
      ),
      title: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(chat.image),
          ),
          SizedBox(width: kDefaultPadding * 0.75),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                chat.name,
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              Text(
                "Active ${chat.time}",
                style: TextStyle(fontSize: 12, color: Colors.black54),
              ),
            ],
          )
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/video.svg",
            width: 20,
            color: Colors.black87,
            height: 20,
          ),
          color: Colors.black87,
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/phone.svg",
            width: 20,
            color: Colors.black87,
            height: 20,
          ),
        ),
        popupMenuButtonMethod(),
      ],
    );
  }

  PopupMenuButton<String> popupMenuButtonMethod() {
    return PopupMenuButton<String>(
      icon: SvgPicture.asset("assets/icons/more-vertical.svg"),
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem(
              child: Text("Disappearing messages"),
              value: "Disappearing messages"),
          PopupMenuItem(child: Text("All media"), value: "All media"),
          PopupMenuItem(
              child: Text("Conversation settings"),
              value: "Conversation settings"),
          PopupMenuItem(child: Text("Search"), value: "Search"),
          PopupMenuItem(
              child: Text("Add to home screen"), value: "Add to home screen"),
          PopupMenuItem(
              child: Text("Reset secure session"),
              value: "Reset secure session"),
          PopupMenuItem(
              child: Text("Mute notifications"), value: "Mute notifications"),
        ];
      },
    );
  }
}
