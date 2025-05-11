import 'package:flutter/material.dart';
import 'package:savesure/test.dart';
import 'package:savesure/view/auth/forgot_password_screen.dart';

import 'package:savesure/view/auth/login_screen.dart';
import 'package:savesure/view/auth/register_screen.dart';
import 'package:savesure/view/home/home_screen.dart';

import 'package:savesure/view/notification/cards_notification.dart';

// ✅ Main Function (entry point)
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
//  await initializeNotifications(); // Plugin init function call
//await requestNotificationPermissionIfNeeded(); // ⬅️ ASK FOR PERMISSION HERE
  runApp(Main()); // App run
}

// ✅ Main App Widget
class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
