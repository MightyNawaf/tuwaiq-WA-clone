import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/spaces.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({
    super.key,
    required this.name,
    required this.time,
    required this.latestMessage,
    required this.unreadMessagesCount,
    this.imageUrl,
    this.showDivider = true,
  });

  final String? imageUrl;
  final String name;
  final String latestMessage;
  final String time;
  final int unreadMessagesCount;
  final bool showDivider;

  @override
  Widget build(BuildContext context) {
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
                      imageUrl ??
                          'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
                    ),
                  ),
                  kHSpace16,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      kVSpace8,
                      Text(latestMessage),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    time,
                    style: const TextStyle(fontWeight: FontWeight.w100),
                  ),
                  kVSpace8,
                  Container(
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
                ],
              )
            ],
          ),
        ),
        Visibility(
          visible: showDivider,
          child: Divider(
            thickness: 1,
            indent: MediaQuery.of(context).size.width * 0.2,
          ),
        )
      ],
    );
  }
}
