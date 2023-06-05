import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/spaces.dart';
import 'package:whatsapp_clone/models/chat.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({super.key, required this.chat});

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    final unreadMessagesCount = chat.messages.where((element) => element.isRead == false).length;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      chat.imageUrl ??
                          'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
                    ),
                  ),
                  kHSpace16,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        chat.name,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      kVSpace8,
                      Text(chat.messages.last.content),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    chat.messages.last.time,
                    style: const TextStyle(fontWeight: FontWeight.w100),
                  ),
                  kVSpace8,
                  _MyChip(unreadMessagesCount),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class _MyChip extends StatelessWidget {
  const _MyChip(this.unreadMessagesCount);

  final int unreadMessagesCount;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: unreadMessagesCount > 0,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Text(
          '$unreadMessagesCount',
          style: const TextStyle(color: Colors.white, fontSize: 14),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
