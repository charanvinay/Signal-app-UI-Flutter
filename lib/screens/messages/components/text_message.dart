import 'package:signal/constants.dart';
import 'package:signal/models/ChatMessage.dart';
import 'package:flutter/material.dart';

class TextMessage extends StatelessWidget {
  const TextMessage({Key? key, required this.message}) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding * 0.75,
        vertical: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: kPrimaryColor.withOpacity(message.isSender ? 1 : 0.08),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Column(
        crossAxisAlignment: message.isSender
            ? CrossAxisAlignment.end
            : CrossAxisAlignment.start,
        children: [
          Text(
            message.text!,
            style: TextStyle(
              color: message.isSender
                  ? Colors.white
                  : Theme.of(context).textTheme.bodyText1!.color,
            ),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Text(
                message.time,
                style: TextStyle(
                  color: message.isSender ? Colors.white : Colors.black45,
                  fontSize: 10,
                ),
              ),
              SizedBox(width: 4),
              if (message.isSender) messageIcon(message.messageStatus)
            ],
          )
        ],
      ),
    );
  }

  Widget messageIcon(MessageStatus status) {
    switch (status) {
      case MessageStatus.not_sent:
        return Icon(
          Icons.cancel,
          size: 12,
          color: Colors.white,
        );
      case MessageStatus.not_view:
        return Icon(
          Icons.check_circle_outline,
          size: 12,
          color: Colors.white,
        );
      case MessageStatus.viewed:
        return Icon(
          Icons.check_circle_rounded,
          size: 12,
          color: Colors.white,
        );
    }
  }
}
