import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:savesure/view/home/home_screen.dart';
import 'package:savesure/view/notification/cards_notification.dart'; // आपकी स्क्रीन

// ✅ Main Function (entry point)
Future<void> main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Initialization से पहले जरूरी होता है
  await initializeNotifications(); // Plugin init function call
  await requestNotificationPermissionIfNeeded(); // ⬅️ ASK FOR PERMISSION HERE
  runApp(Main()); // App run करना
}

// ✅ Main App Widget
class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(), // आपकी main screen
    );
  }
}
