import 'package:whatsapp_clone/components/chat_card.dart';
import 'package:whatsapp_clone/models/chat.dart';

class Data {
  static List<ChatCard> cards = [
    ChatCard(
      chat: Chat(
        name: 'Fahad',
        messages: [
          Message(
            isSender: true,
            time: '10:00',
            content: 'بدأ الكلاس',
            isRead: true,
          ),
        ],
      ),
    ),
    ChatCard(
      chat: Chat(
        name: 'Omar',
        messages: [
          Message(
            isSender: true,
            time: '10:00',
            content: 'بدأ الكلاس',
            isRead: false,
          ),
          Message(
            isSender: true,
            time: '10:05',
            content: 'وينك !',
            isRead: false,
          ),
          Message(
            isSender: true,
            time: '10:10',
            content: 'فهد قام يخصم',
            isRead: false,
          ),
        ],
      ),
    ),
  ];
}
