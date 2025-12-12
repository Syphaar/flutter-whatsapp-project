import 'package:flutter/material.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: ListView(
          children: [
            callItem(
              name: "John Doe",
              time: "Today, 10:12 AM",
              callType: "incoming",
              isMissed: false,
              isVideo: false,
            ),
            callItem(
              name: "Sarah",
              time: "Today, 9:00 AM",
              callType: "outgoing",
              isMissed: false,
              isVideo: true,
            ),
            callItem(
              name: "Michael",
              time: "Yesterday, 7:45 PM",
              callType: "incoming",
              isMissed: true,
              isVideo: false,
            ),
            callItem(
              name: "Work Group",
              time: "Yesterday, 5:10 PM",
              callType: "outgoing",
              isMissed: false,
              isVideo: true,
            ),
          ],
        ),
      ),
    );
  }

  Widget callItem({
    required String name,
    required String time,
    required String callType,
    required bool isMissed,
    required bool isVideo,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: const CircleAvatar(
        radius: 26,
        backgroundColor: Colors.grey,
        child: Icon(Icons.person, size: 30, color: Colors.white),
      ),
      title: Text(
        name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: isMissed ? Colors.red : Colors.black,
        ),
      ),
      subtitle: Row(
        children: [
          Icon(
            callType == "incoming" ? Icons.call_received : Icons.call_made,
            size: 16,
            color: isMissed ? Colors.red : Colors.green,
          ),
          const SizedBox(width: 6),
          Text(time),
        ],
      ),
      trailing: Icon(
        isVideo ? Icons.videocam : Icons.call,
        color: Colors.green.shade700,
      ),
    );
  }
}
