import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/app_bar.dart';
import 'package:whatsapp_clone/data.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => MainAppState();
}

class MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatPage(),
    );
  }
}

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context,
        onPushDone: () {
          setState(() {});
        },
      ),
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            ...Data.cards,
          ],
        ),
      ),
    );
  }
}
