import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/app_bar.dart';
import 'package:whatsapp_clone/components/chat_card.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: customAppBar,
        body: SafeArea(
          bottom: false,
          child: ListView(
            children: const [
              ChatCard(
                latestMessage: 'يخوي رد علينا',
                name: 'فهد',
                time: '10:00',
                unreadMessagesCount: 1000,
              ),
              ChatCard(
                latestMessage: 'يخوي رد علينا',
                name: 'وليد',
                time: '4:00',
                unreadMessagesCount: 3,
              ),
              ChatCard(
                latestMessage: 'يخوي رد علينا',
                name: 'فهد',
                time: '10:00',
                unreadMessagesCount: 1000,
              ),
              ChatCard(
                latestMessage: 'يخوي رد علينا',
                name: 'فهد',
                time: '10:00',
                unreadMessagesCount: 1000,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
