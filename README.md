# WhatsApp Flutter Clone

A Flutter-based messaging app inspired by WhatsApp. This project replicates the core features of WhatsApp with a clean, modern interface, including chats, status updates, and call logs. The app is fully responsive and optimized for mobile devices.

---

## Live Preview

[View Live Demo](#) <!-- Replace # with your live URL if you have one -->

---

## Features

- Fully functional Chats, Status, and Calls pages
- Modern, clean UI design
- Responsive layout for different screen sizes
- Smooth navigation between tabs
- Reusable Flutter widgets for messages, status updates, and call logs
- Works perfectly on Android, iOS, Web, macOS, Windows and Linux

---

## Screenshots

### Chats Page
![Chats Page](path/to/chat-screenshot.png) <!-- Replace with your screenshot link -->

*This is the home screen, which doubles as the chat page. Here, you can quickly see your current chats, pending chats, pending messages and the messages that you've opened and are yet to be replied. It also displays messages from work and friend groups.*

### Status Page
![Status Page](path/to/status-screenshot.png)

*This is where you'll view updated status from your friends an people that you have their numbers currently save to your device.*

### Calls Page
![Calls Page](path/to/calls-screenshot.png)

*If you have received or missed any voice call or video call, this is the page that displays them. It helps you keep track of your call history with work, friends and family.*

---

## Features

- **Chats Page:** Displays all conversations with contact name, profile picture, last message, and timestamp. Tap to open a chat.  
- **Status Page:** Shows friends’ latest statuses. You can scroll through updates and view who has seen your status.  
- **Calls Page:** Shows recent voice/video calls with call type (incoming/outgoing/missed) and timestamp.  
- **Navigation:** Switch seamlessly between Chats, Status, and Calls using the botton navigation bar.

---

## Tech Stack

- **Flutter**
- **Dart**

---

## Project Structure
```
lib/
├─ pages/
│  ├─ calls_page.dart
│  ├─ chat_page.dart
│  └─ status_page.dart
├─ chat_card.dart
├─ home.dart
└─ main.dart

```
## How To Run
Prerequisites
  * Flutter SDK (≥3.19 recommended)
  * Dart SDK

## Installation & Run

```
# 1. Clone the repo
git clone https://github.com/Syphaar/flutter-whatsapp-project

# 2. Get dependencies
flutter pub get

# 3. Run the app
flutter run
```

Supports All Platforms: 
```
flutter run -d chrome      # Web
flutter run -d windows      # Windows
flutter run -d macos       # macOS
flutter run -d linux       # Linux
flutter run -d android     # Android emulator/device
flutter run -d ios         # iOS simulator/device
```



**THE CHAT PAGE**
![Chat page](https://github.com/Syphaar/flutter-whatsapp-project/blob/32e8fa900a09baa34d70cc4ac8cb39ca76207faa/Screenshot%20(576).png)

**THE STATUS PAGE**
![Status page](https://github.com/Syphaar/flutter-whatsapp-project/blob/32e8fa900a09baa34d70cc4ac8cb39ca76207faa/Screenshot%20(577).png)

**CALLS PAGE**
![Calls page](https://github.com/Syphaar/flutter-whatsapp-project/blob/32e8fa900a09baa34d70cc4ac8cb39ca76207faa/Screenshot%20(578).png)
