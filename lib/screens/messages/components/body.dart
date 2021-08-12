import 'package:signal/models/Chat.dart';
import 'package:signal/models/ChatMessage.dart';
import 'package:signal/screens/messages/components/chat_input_field.dart';
import 'package:signal/screens/messages/components/message.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.chat}) : super(key: key);
  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: demeChatMessages.length,
            itemBuilder: (context, index) => Message(
              message: demeChatMessages[index],
              chat: chat,
            ),
          ),
        ),
        ChatInputField(),
      ],
    );
  }
}
