import 'package:flutter/material.dart';
import 'pages/chat_page.dart';
import 'pages/status_page.dart';
import 'pages/calls_page.dart';

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({super.key});

  @override
  State<WhatsAppHome> createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> {
  int currentIndex = 0;

  final List<Widget> pages = const [
    ChatPage(),
    StatusPage(),
    CallsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade700,
        title: const Text(
          "Whatsapp",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),

      body: pages[currentIndex],

      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Colors.grey.shade300)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            navItem(Icons.chat, "Chat", 0),
            navItem(Icons.circle, "Status", 1),
            navItem(Icons.call, "Calls", 2),
          ],
        ),
      ),
    );
  }

  // Bottom Navigation Item
  Widget navItem(IconData icon, String text, int index) {
    final selected = currentIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          currentIndex = index;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: selected ? Colors.green.shade700 : Colors.grey),
          const SizedBox(height: 4),
          Text(
            text,
            style: TextStyle(
              color: selected ? Colors.green.shade700 : Colors.grey,
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
