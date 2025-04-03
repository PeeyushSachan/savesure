import 'package:flutter/material.dart';
import 'package:savesure/view/auth/forgot_password_screen.dart';
import 'package:savesure/view/auth/login_screen.dart';
import 'package:savesure/view/auth/newpasswordscreen.dart';
import 'package:savesure/view/auth/passwordresetpage.dart';
import 'package:savesure/view/auth/register_screen.dart';
import 'package:savesure/view/auth/verifyotpscreen.dart';
import 'package:savesure/view/home/home_screen.dart';
import 'package:savesure/widgets/myevent_ss_card.dart';
import 'package:savesure/widgets/warrenty_ss_card.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        //home: SSCard(),
        //home: MyeventSsCard(),
        // home: LoginScreen(),
        //home: RegisterScreen(),
        //home: ForgotPasswordScreen(),
        //home: VerifyOtpScreen(),
        //home: NewPasswordScreen(),
        home: PasswordResetPage());
  }
}
