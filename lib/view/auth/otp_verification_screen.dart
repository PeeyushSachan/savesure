import 'package:flutter/material.dart';
import 'package:responsive_media/responsive_media.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    ResponsiveMedia.init(context);
    final rm = ResponsiveMedia.instance;
    return Scaffold(
      body: Padding(
        padding: rm.defaultPadding,
        child: SingleChildScrollView(
          child: Column(
            children: [
              rm.gapL(),
              rm.gapL(),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/image 5.png",
                      width: rm.shortestSide * 0.09,
                    ),
                    rm.gapL(),
                    rm.gapL(),
                    Text.rich(TextSpan(children: [
                      TextSpan(
                        text: "Verify Your Email OTP",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: rm.h1 * 0.7),
                      ),
                      TextSpan(
                          text:
                              "\nEnter the 4-digit OTP sent to your email \nto verify your account.",
                          style: TextStyle(
                              fontSize: rm.h2 * 0.7, color: Colors.grey))
                    ]))
                  ],
                ),
              ),
              rm.gapL(),
              rm.gapS(),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: rm.shortestSide * 0.16,
                      height: rm.shortestSide * 0.16,
                      child: TextField(
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                    ),
                    rm.gapL(),
                    Container(
                      width: rm.shortestSide * 0.16,
                      height: rm.shortestSide * 0.16,
                      child: TextField(
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                    ),
                    rm.gapL(),
                    Container(
                      width: rm.shortestSide * 0.16,
                      height: rm.shortestSide * 0.16,
                      child: TextField(
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                    ),
                    rm.gapL(),
                    Container(
                      width: rm.shortestSide * 0.16,
                      height: rm.shortestSide * 0.16,
                      child: TextField(
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                    )
                  ],
                ),
              ),
              rm.gapL(),
              Container(
                child: Text("Don't get any Email?",
                    style:
                        TextStyle(fontSize: rm.h2 * 0.7, color: Colors.grey)),
              ),
              rm.gapL(),
              Container(
                child: Text(
                  "Resend Code",
                ),
              ),
              rm.gapL(),
              rm.gapS(),
              Container(
                height: rm.shortestSide * 0.14,
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
                        color: Colors.white, fontSize: rm.button * 1.5),
                  ),
                ),
              ),
              rm.gapL(),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: rm.shortestSide * 0.14,
                child: Center(
                  child: Text(
                    "Back",
                    style: TextStyle(
                        color: Colors.black, fontSize: rm.button * 1.5),
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
