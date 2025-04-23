import 'package:flutter/material.dart';
import 'package:responsive_media/responsive_media.dart';
import 'package:savesure/core/theme/app_colors.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    ResponsiveMedia.init(context); // insitalization

    final rm = ResponsiveMedia.instance; // Use after init(context)
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: rm.horizontalPadding,
          child: Column(
            children: [
              rm.gapXL(),
              rm.gapXL(),
              Container(
                child: Row(
                  spacing: rm.spacingS,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: rm.shortestSide * 0.15,
                      child: Image.asset(
                        "assets/image 5.png",

                        fit: BoxFit.cover,
                        // Scales dynamically
                      ),
                    ),
                    Container(
                      child: RichText(
                          text: TextSpan(
                              text: "Forget Your Password? \n",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: rm.shortestSide *
                                    0.06, // Adjusts dynamically
                              ),
                              children: [
                            TextSpan(
                              text: "Please Enter Your Email Address",
                              style:
                                  TextStyle(fontSize: rm.shortestSide * 0.04),
                            )
                          ])),
                    )
                  ],
                ),
              ),
              rm.gapL(),
              SizedBox(
                height: rm.shortestSide * 0.18,
                child: TextField(
                  style: TextStyle(
                      fontSize: rm.h1, color: AppColors.primaryOrange),
                  decoration: InputDecoration(
                    hintText: "Enter Your Email",
                    hintStyle: TextStyle(fontSize: rm.caption),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: AppColors.primaryOrange)),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: rm.shortestSide * 0.06),
                    prefixIcon: Padding(
                      padding: rm.defaultPadding,
                      child: Icon(
                        Icons.email,
                        color: AppColors.primaryOrange,
                        size: rm.shortestSide * 0.08,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              Container(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Need Help?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: rm.shortestSide * 0.04,
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
              ),
              rm.gapXL(),
              Container(
                width: double.infinity,
                height: rm.shortestSide * 0.18,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFFA6C12),
                      Color(0xFFC64AA1)
                    ], // Define gradient colors
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  onPressed: () {},
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: rm.shortestSide * 0.045,
                    ),
                  ),
                ),
              ),
              rm.gapL(),
              SizedBox(
                width: double.infinity,
                height: rm.shortestSide * 0.18,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Back",
                    style: TextStyle(fontSize: rm.shortestSide * 0.045),
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
