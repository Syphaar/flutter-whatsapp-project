import 'package:flutter/material.dart';
import '../chat_card.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ChatCard(
            name: "John Doe",
            message: "Hey, are we still meeting today?",
            time: "10:45 AM"),
        ChatCard(
            name: "Sarah",
            message: "I'll call you back shortly.",
            time: "09:12 AM"),
        ChatCard(
            name: "Michael",
            message: "Thanks, bro!",
            time: "Yesterday"),
        ChatCard(
            name: "Work Group",
            message: "Don't forget the meeting tomorrow.",
            time: "08:00 PM"),
        ChatCard(
            name: "Jessica",
            message: "Okay, I'll check it out.",
            time: "06:21 PM"),
      ],
    );
  }
}
