import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/spaces.dart';

class AddCardPage extends StatefulWidget {
  const AddCardPage({super.key});

  @override
  State<AddCardPage> createState() => _AddCardPageState();
}

class _AddCardPageState extends State<AddCardPage> {
  final latestMessageController = TextEditingController();
  final nameController = TextEditingController();
  final timeController = TextEditingController();
  final unreadMessagesCountController = TextEditingController();

  @override
  void dispose() {
    latestMessageController.dispose();
    nameController.dispose();
    timeController.dispose();
    unreadMessagesCountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a new card'),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 64),
          children: [
            Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: Text('Latest message'),
                ),
                Expanded(
                  flex: 3,
                  child: TextField(
                    controller: latestMessageController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            kVSpace16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(flex: 1, child: Text('Name')),
                Expanded(
                  flex: 3,
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            kVSpace16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(flex: 1, child: Text('Time')),
                Expanded(
                  flex: 3,
                  child: TextField(
                    controller: timeController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            kVSpace16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(flex: 1, child: Text('Unread messages count')),
                Expanded(
                  flex: 3,
                  child: TextField(
                    controller: unreadMessagesCountController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            kVSpace32,
            ElevatedButton(
              onPressed: () {
                // Data.cards.add(
                //   ChatCard(
                // 	chat: Chat(name: nameCon, messages: messages),
                //   ),
                // );
              },
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
