import 'package:flutter/material.dart';

import 'package:signal/models/Chat.dart';
import 'package:signal/screens/chats/components/chat_card.dart';
import 'package:signal/screens/messages/message_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatData(
              chat: chatsData[index],
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessageScreen(chat: chatsData[index]),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
