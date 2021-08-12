import 'package:flutter_svg/flutter_svg.dart';
import 'package:signal/constants.dart';
import 'package:flutter/material.dart';

class ChatInputField extends StatelessWidget {
  const ChatInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 5,
            color: Color(0xFF087949).withOpacity(0.1),
          )
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.75),
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.sentiment_satisfied_outlined,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color!
                          .withOpacity(0.64),
                    ),
                    SizedBox(width: kDefaultPadding / 4),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Signal message",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SvgPicture.asset(
                      "assets/icons/camera.svg",
                      width: 20,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color!
                          .withOpacity(0.64),
                      height: 20,
                    ),
                    SizedBox(width: kDefaultPadding / 3),
                    SvgPicture.asset(
                      "assets/icons/mic.svg",
                      width: 20,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color!
                          .withOpacity(0.64),
                      height: 20,
                    ),
                    SizedBox(width: kDefaultPadding / 4),
                  ],
                ),
              ),
            ),
            SizedBox(width: kDefaultPadding / 2),
            CircleAvatar(
              backgroundColor: kPrimaryColor,
              child: SvgPicture.asset(
                "assets/icons/plus.svg",
                width: 30,
                color: Colors.white,
                height: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
