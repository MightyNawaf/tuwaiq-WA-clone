class Chat {
  final String name;
  final String? imageUrl;
  final List<Message> messages;

  const Chat({
    required this.name,
    required this.messages,
    this.imageUrl,
  });
}


class Message {
  final bool isSender;
  final String time;
  final String content;
  final bool isRead;

  Message({
    required this.isSender,
    required this.time,
    required this.content,
    required this.isRead,
  });
}
