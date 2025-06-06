import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_media/responsive_media.dart';
import 'package:savesure/core/theme/app_colors.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  bool passwordVisible = true;
  bool confirmPasswordVisible = true;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
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
                Row(children: [
                  Image.asset(
                    "assets/image.png",
                    width: rm.screenWidth * 0.15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Create A New Password",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: rm.screenWidth * 0.06,
                        ),
                      ),
                      Text(
                          "Your new password must be different \nfrom the previous one.",
                          style: TextStyle(fontSize: rm.screenWidth * 0.04)),
                    ],
                  )
                ]),
                SizedBox(height: rm.screenHeight * 0.04),
               
                      TextField(
                style:
                    TextStyle(fontSize: rm.h1, color: AppColors.primaryOrange),
                obscuringCharacter: "*",
                obscureText: passwordVisible,
                decoration: InputDecoration(
                  hintText: "Enter Your Password",
                  hintStyle: TextStyle(fontSize: rm.h1),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: AppColors.primaryOrange)),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: rm.screenWidth * 0.05),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  prefixIcon: Padding(
                    padding: rm.paddingHorizontal(3),
                    child: Icon(
                      FontAwesomeIcons.lock,
                      color: AppColors.primaryOrange,
                      size: rm.screenWidth * 0.08,
                    ),
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
              TextField(
                style:
                    TextStyle(fontSize: rm.h1, color: AppColors.primaryOrange),
                obscuringCharacter: "*",
                obscureText: passwordVisible,
                decoration: InputDecoration(
                  hintText: "Enter Your Confirm Password",
                  hintStyle: TextStyle(fontSize: rm.h1),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: AppColors.primaryOrange)),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: rm.screenWidth * 0.05),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  prefixIcon: Padding(
                    padding: rm.paddingHorizontal(3),
                    child: Icon(
                      FontAwesomeIcons.lock,
                      color: AppColors.primaryOrange,
                      size: rm.screenWidth * 0.08,
                    ),
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



              rm.gapXL(),
                Container(
                height: rm.shortestSide * 0.16,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xFFFA6C12), Color(0xFFC64AA1)]),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.amber,
                ),
                child: Center(
                  child: Text(
                    "Save",
                    style: TextStyle(
                        color: Colors.white, fontSize: rm.buttonText * 1.5),
                  ),
                ),
              ),
                SizedBox(height: rm.screenHeight * 0.02),
                SizedBox(
                  width: double.infinity,
                  height:  rm.shortestSide * 0.16,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Back",
                      style: TextStyle(fontSize: rm.screenWidth * 0.045),
                    ),
                  ),
                ),
              ],
            )));
  }

  
}
