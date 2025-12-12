import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  final String name;
  final String message;
  final String time;

  const ChatCard({
    super.key,
    required this.name,
    required this.message,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            // LEFT: Person Icon
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green.shade100,
              ),
              child: const Icon(Icons.person, size: 30, color: Colors.green),
            ),
            const SizedBox(width: 12),

            // MIDDLE: Name + Message
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    message,
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                ],
              ),
            ),

            // RIGHT: Time
            Text(
              time,
              style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
