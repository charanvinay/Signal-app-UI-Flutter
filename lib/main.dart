import 'package:flutter/material.dart';
import 'package:signal/screens/chats/chats_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Signal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color(0xFF3A76F0)),
      home: ChatScreen(),
    );
  }
}
