import 'package:flutter/material.dart';
import 'package:responsive_media/responsive_media.dart';
import 'package:savesure/core/theme/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:savesure/widgets/ss_textField.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: rm.paddingHorizontal(2),
          child: Column(
            children: [
              rm.gapXL(),
              SizedBox(
                width: rm.screenWidth,
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
              ),
              rm.gapL(),
              SizedBox(
                height: rm.shortestSide * 0.18,
                child: SsTextField(rm: rm, hintText: "Enter Your Email", icon: Icons.email),
              ),
              rm.gapM(),
              SizedBox(
                height: rm.shortestSide * 0.18,
                child: TextField(
                  style: TextStyle(color: AppColors.primaryOrange),
                  obscuringCharacter: "*",
                  obscureText: passwordVisible,
                  decoration: InputDecoration(
                    hintText: "Enter Your Password",
                    hintStyle: TextStyle(fontSize: rm.caption),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: AppColors.primaryOrange)),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: rm.shortestSide * 0.06),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    prefixIcon: Icon(
                      FontAwesomeIcons.lock,
                      color: AppColors.primaryOrange,
                      size: rm.caption,
                    ),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            passwordVisible = !passwordVisible;
                          });
                        },
                        icon: Icon(
                            size: rm.caption,
                            passwordVisible
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
              rm.gapS(),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                    height: rm.shortestSide * 0.05,
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: rm.h4,
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
                    style: TextStyle(
                        color: Colors.white, fontSize: rm.buttonText * 1.5),
                  ),
                ),
              ),
              SizedBox(
                height: rm.shortestSide * 0.1,
                child: Center(
                  child: Center(
                      child: Text(
                    "or login with",
                    style: TextStyle(fontSize: rm.h3, color: Colors.grey),
                  )),
                ),
              ),
              SizedBox(
                height: rm.shortestSide * 0.25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        width: rm.shortestSide * 0.28,
                        height: rm.shortestSide * 0.15,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(
                          FontAwesomeIcons.github,
                          size: rm.shortestSide * 0.1,
                          color: Colors.black,
                        )),
                    Container(
                        width: rm.shortestSide * 0.28,
                        height: rm.shortestSide * 0.15,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(
                          Icons.facebook,
                          size: rm.shortestSide * 0.1,
                          color: Colors.blue,
                        )),
                    Container(
                        width: rm.shortestSide * 0.28,
                        height: rm.shortestSide * 0.15,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(
                          Icons.apple,
                          size: rm.shortestSide * 0.1,
                        ))
                  ],
                ),
              ),
              Center(
                child: RichText(
                    text: TextSpan(
                        style: TextStyle(color: Colors.grey, fontSize: rm.h3),
                        children: <TextSpan>[
                      TextSpan(text: 'By "Login Account", you agree to the'),
                      TextSpan(
                          text: '\nTerms of Use ',
                          style: TextStyle(
                              color: Color(0xFFC64AA1),
                              fontWeight: FontWeight.bold,
                              fontSize: rm.h3)),
                      TextSpan(text: " and "),
                      TextSpan(
                          text: "Privacy Policy",
                          style: TextStyle(
                              color: Color(0xFFC64AA1),
                              fontWeight: FontWeight.bold))
                    ])),
              ),
              SizedBox(
                height: rm.shortestSide * 0.2,
                child: Center(
                  child: RichText(
                    text: TextSpan(
                        style: TextStyle(color: Colors.grey, fontSize: rm.h2),
                        children: <TextSpan>[
                          TextSpan(
                              text: "Don't have an account?",
                              style: TextStyle(
                                  fontSize: rm.h2, color: Colors.black)),
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
      ),
    );
  }
}
