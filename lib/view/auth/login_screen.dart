import 'package:flutter/material.dart';
import 'package:responsive_media/responsive_media.dart';
import 'package:savesure/core/theme/app_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordVisible = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ResponsiveMedia.init(context); // insitalization

    final rm = ResponsiveMedia.instance; // Use after init(context)
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: RichText(
                  text: TextSpan(
                text: "Login Account \n",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: rm.h1 * 1.5,
                    color: Colors.black),
                children: [
                  TextSpan(
                    text: "Please login into your account",
                    style: TextStyle(fontSize: rm.h2, color: Colors.grey),
                  )
                ],
              )),
              height: rm.shortestSide * 0.2,
              width: rm.screenWidth,
            ),
            Container(
              height: rm.shortestSide * 0.18,
              child: TextField(
                style: TextStyle(color: AppColors.primaryOrange),
                decoration: InputDecoration(
                  hintText: "Enter Your Email",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: AppColors.primaryOrange)),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: rm.shortestSide * 0.06),
                  prefixIcon: Icon(Icons.email, color: AppColors.primaryOrange),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            rm.gapL(),
            Container(
              height: rm.shortestSide * 0.18,
              child: TextField(
                style: TextStyle(color: AppColors.primaryOrange),
                obscuringCharacter: "*",
                obscureText: passwordVisible,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: AppColors.primaryOrange)),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: rm.shortestSide * 0.06),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  prefixIcon: Image.asset(
                    "assets/Vector.png",
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passwordVisible = !passwordVisible;
                        });
                      },
                      icon: Icon(passwordVisible
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                ),
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
              ),
            ),
            rm.gapL(),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                  height: rm.shortestSide * 0.05,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.deepOrange),
                  )),
            ),
            rm.gapL(),
            Container(
              height: rm.shortestSide * 0.18,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFFFA6C12), Color(0xFFC64AA1)]),
                borderRadius: BorderRadius.circular(15),
                color: Colors.amber,
              ),
              child: Center(
                child: Text(
                  "Submit",
                  style:
                      TextStyle(color: Colors.white, fontSize: rm.button * 1.5),
                ),
              ),
            ),
            Container(
              height: rm.shortestSide * 0.1,
              child: Center(
                child: Center(
                    child: Text(
                  "or login with",
                  style: TextStyle(color: Colors.grey),
                )),
              ),
            ),
            Container(
              height: rm.shortestSide * 0.25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: rm.shortestSide * 0.3,
                    height: rm.shortestSide * 0.13,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset("assets/Group.png"),
                  ),
                  Container(
                    width: rm.shortestSide * 0.3,
                    height: rm.shortestSide * 0.13,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset("assets/Facebook.png"),
                  ),
                  Container(
                    width: rm.shortestSide * 0.3,
                    height: rm.shortestSide * 0.13,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset("assets/Apple.png"),
                  )
                ],
              ),
            ),
            Container(
                child: Center(
              child: RichText(
                  text: TextSpan(
                      style: TextStyle(color: Colors.grey, fontSize: rm.h3),
                      children: <TextSpan>[
                    TextSpan(text: 'By "Login Account", you agree to the'),
                    TextSpan(
                        text: ' Terms of Use',
                        style: TextStyle(
                            color: Color(0xFFC64AA1),
                            fontWeight: FontWeight.bold)),
                    TextSpan(text: " \n                    and"),
                    TextSpan(
                        text: "  Privacy Policy",
                        style: TextStyle(
                            color: Color(0xFFC64AA1),
                            fontWeight: FontWeight.bold))
                  ])),
            )),
            Container(
              height: rm.shortestSide * 0.2,
              child: Center(
                child: RichText(
                  text: TextSpan(
                      style: TextStyle(color: Colors.grey, fontSize: rm.h2),
                      children: <TextSpan>[
                        TextSpan(
                            text: "Don't have an account?",
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: " Create Account",
                            style: TextStyle(
                                color: Color(0xFFFA6C12),
                                fontWeight: FontWeight.bold))
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
