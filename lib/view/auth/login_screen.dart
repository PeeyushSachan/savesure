

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordVisible = true;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;
        bool isLargeScreen = screenWidth > 600;

        return Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(isLargeScreen ? 40 : 13),
                child: SizedBox(
                  width: isLargeScreen ? 500 : double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Login Account",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: isLargeScreen ? 40 : 35),
                      ),
                      Text(
                        "Please login into your account",
                        style: TextStyle(
                            fontSize: isLargeScreen ? 22 : 20,
                            color: Colors.grey),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Image.asset("assets/mail.png"),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        obscuringCharacter: "*",
                        obscureText: passwordVisible,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.deepOrange)),
                          prefixIcon: Image.asset("assets/Vector.png"),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                passwordVisible = !passwordVisible;
                              });
                            },
                            icon: Icon(passwordVisible
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.done,
                      ),
                      SizedBox(height: 5),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.deepOrange),
                        ),
                      ),
                      SizedBox(height: 20),
                      /* SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                          backgroundColor: Colors.deepOrange,
                          ),
                          onPressed: () {},
                          child: Text("Submit",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                        ),
                      ),*/
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFFA6C12),
                                Color(0xFFC64AA1)
                              ], // Define gradient colors
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors
                                  .transparent, // Make button background transparent
                              shadowColor: Colors
                                  .transparent, // Remove shadow color to avoid conflict
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Submit",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                      ),

                      //
                      SizedBox(height: 25),
                      Center(
                          child: Text("or login with",
                              style: TextStyle(color: Colors.grey))),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          "assets/Group.png",
                          "assets/Facebook.png",
                          "assets/Apple.png"
                        ]
                            .map((image) => Container(
                                  width: isLargeScreen ? 140 : 100,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Image.asset(image),
                                ))
                            .toList(),
                      ),
                      SizedBox(height: 15),
                      Center(
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                            children: [
                              TextSpan(
                                  text:
                                      'By "Login Account", you agree to the '),
                              TextSpan(
                                  text: 'Terms of Use',
                                  style: TextStyle(
                                      color: Color(0xFFC64AA1),
                                      fontWeight: FontWeight.bold)),
                              TextSpan(text: " and "),
                              TextSpan(
                                  text: "Privacy Policy",
                                  style: TextStyle(
                                      color: Color(0xFFC64AA1),
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                            children: [
                              TextSpan(
                                  text: "Don't have an account?",
                                  style: TextStyle(color: Colors.black)),
                              TextSpan(
                                text: " Create Account",
                                style: TextStyle(
                                    color: Color(0xFFFA6C12),
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}