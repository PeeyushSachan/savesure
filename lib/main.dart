import 'package:flutter/material.dart';
import 'package:savesure/test.dart';
import 'package:savesure/view/auth/forgot_password_screen.dart';

import 'package:savesure/view/auth/login_screen.dart';
import 'package:savesure/view/auth/otp_verification_screen.dart';
import 'package:savesure/view/auth/register_screen.dart';
import 'package:savesure/view/auth/reset_password_screen.dart';
import 'package:savesure/view/auth/success_reset_screen.dart';
import 'package:savesure/view/home/home_screen.dart';
import 'package:savesure/view/home/tab/cardAction/add_new_card.dart';

import 'package:savesure/view/notification/cards_notification.dart';
import 'package:savesure/view/settings/profile_screen.dart';

import 'package:savesure/widgets/test2.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: HomeScreen(),

      theme: ThemeData(fontFamily: "outfit"),

      // home: StyledNotificationPopup()
    );
  }
}
