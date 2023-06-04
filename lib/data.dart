import 'package:whatsapp_clone/components/chat_card.dart';

class Data {
  static List<ChatCard> cards = [
    const ChatCard(
      latestMessage: 'يخوي رد علينا',
      name: 'فهد',
      time: '10:00',
      unreadMessagesCount: 1000,
    ),
    const ChatCard(
      latestMessage: 'يخوي رد علينا',
      name: 'وليد',
      time: '4:00',
      unreadMessagesCount: 3,
    ),
    const ChatCard(
      latestMessage: 'يخوي رد علينا',
      name: 'فهد',
      time: '10:00',
      unreadMessagesCount: 1000,
    ),
    const ChatCard(
      latestMessage: 'يخوي رد علينا',
      name: 'فهد',
      time: '10:00',
      unreadMessagesCount: 1000,
      showDivider: false,
    ),
  ];
}
