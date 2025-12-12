import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: ListView(
          children: [
            // MY STATUS
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Stack(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.grey.shade300,
                    child: const Icon(Icons.person, size: 35, color: Colors.grey),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: const Icon(Icons.add, size: 16, color: Colors.white),
                    ),
                  )
                ],
              ),
              title: const Text("My Status", style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("Tap to add status update"),
            ),

            const Padding(
              padding: EdgeInsets.only(top: 15, bottom: 10),
              child: Text(
                "Recent updates",
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            ),

            statusItem("Sarah", "Today, 9:10 AM"),
            statusItem("Michael", "Today, 8:22 AM"),
            statusItem("Jessica", "Yesterday, 7:45 PM"),
            statusItem("Work Group", "Yesterday, 5:03 PM"),
          ],
        ),
      ),
    );
  }

  Widget statusItem(String name, String time) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.green, width: 3),
        ),
        child: const CircleAvatar(
          radius: 26,
          backgroundColor: Colors.grey,
          child: Icon(Icons.person, size: 30, color: Colors.white),
        ),
      ),
      title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(time),
    );
  }
}
