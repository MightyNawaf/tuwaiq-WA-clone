import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/spaces.dart';
import 'package:whatsapp_clone/extensions/context.dart';
import 'package:whatsapp_clone/models/chat.dart';

class ChatDetailsPage extends StatelessWidget {
  const ChatDetailsPage({super.key, required this.chat});

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        padding: const EdgeInsets.all(24),
        child: const Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 5.5,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        foregroundColor: const Color.fromARGB(255, 0, 34, 62),
        title: Text(
          chat.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 0, 34, 62),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: const Color.fromARGB(255, 237, 239, 249),
      body: ListView.separated(
        padding: const EdgeInsets.all(24),
        itemCount: chat.messages.length,
        itemBuilder: (context, index) {
          final isSender = chat.messages[index].isSender;
          const radius = Radius.circular(20);
          return Row(
            mainAxisAlignment: isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: context.width * 0.75,
                    ),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: isSender ? Colors.blue : Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: radius,
                        topRight: radius,
                        bottomLeft: isSender ? radius : Radius.zero,
                        bottomRight: isSender ? Radius.zero : radius,
                      ),
                    ),
                    child: Text(
                      chat.messages[index].content,
                      style: TextStyle(color: isSender ? Colors.white : Colors.black),
                    ),
                  ),
                  kVSpace4,
                  Text(
                    chat.messages[index].time,
                    style: const TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return kVSpace8;
        },
      ),
    );
  }
}
