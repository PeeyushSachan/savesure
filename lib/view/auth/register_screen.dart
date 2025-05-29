import 'package:flutter/material.dart';
import 'package:responsive_media/responsive_media.dart';
import 'package:savesure/core/theme/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:savesure/widgets/ss_textField.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                  text: "Create a New Account \n",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: rm.h1 * 1.5,
                      color: Colors.black),
                  children: [
                    TextSpan(
                      text: "Sign up now to access your account and get started!",
                      style: TextStyle(fontSize: rm.h2, color: Colors.grey),
                    )
                  ],
                )),
              ),
              rm.gapL(),
             SsTextField(rm: rm, hintText: "Enter Your Name", icon: Icons.badge),
               rm.gapM(),
              SsTextField(rm: rm, hintText: "Enter Your Email", icon: Icons.email),
             
             
              rm.gapM(),


              TextField(
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
             rm.gapM(),

            SsTextField(rm: rm, hintText: "Profession", icon: Icons.apartment),

              rm.gapM(),

            SsTextField(rm: rm, hintText: "Gender", icon: Icons.people),
            
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
              rm.gapS(),
              SizedBox(
                height: rm.shortestSide * 0.1,
                child: Center(
                  child: Center(
                      child: Text(
                    "or create with",
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
                              text: "Have an account?",
                              style: TextStyle(
                                  fontSize: rm.h2, color: Colors.black)),
                          TextSpan(
                              text: " Login Account",
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
