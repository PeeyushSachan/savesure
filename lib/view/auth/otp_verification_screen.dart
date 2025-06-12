import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_media/responsive_media.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  Widget _buildOtpTextField(BuildContext context, ResponsiveMedia rm) {
    return SizedBox(
      width: rm.shortestSide * 0.15,
      child: TextField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.deepOrange),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
        ),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        style: Theme.of(context).textTheme.bodyMedium,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    ResponsiveMedia.init(context); // insitalization

    final rm = ResponsiveMedia.instance; // Use after init(context)

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: rm.shortestSide * 0.05,
          vertical: rm.screenHeight * 0.08,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/image 5.png",
                  width: rm.shortestSide * 0.15,
                ),
                SizedBox(width: rm.shortestSide * 0.03, height: null),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                        text: "Verify Your Email OTP \n",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: rm.h1,
                        ),
                        children: [
                          TextSpan(
                            text:
                                "Enter the 4-digit OTP sent to your email to verify your account.",
                            style:
                                TextStyle(fontSize: rm.h4, color: Colors.grey),
                          )
                        ]),
                  ),
                ),
              ],
            ),
            SizedBox(height: rm.screenHeight * 0.04),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:
                  List.generate(4, (index) => _buildOtpTextField(context, rm)),
            ),
            SizedBox(height: rm.screenHeight * 0.02),
            Text(
              "00:50",
              style: TextStyle(
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: rm.screenHeight * 0.03),
            Text("Didn’t receive an email?",
                style: TextStyle(fontSize: rm.shortestSide * 0.04)),
            SizedBox(height: rm.screenHeight * 0.03),
            GestureDetector(
              onTap: () {},
              child: Text(
                "Resend Code",
                style: TextStyle(
                    fontSize: rm.shortestSide * 0.05, color: Colors.blue),
              ),
            ),
            rm.gapL(),
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
                  "Verify",
                  style: TextStyle(
                      color: Colors.white, fontSize: rm.buttonText * 1.5),
                ),
              ),
            ),
            SizedBox(height: rm.screenHeight * 0.02),
            SizedBox(
              width: double.infinity,
              height: rm.shortestSide * 0.16,
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
    );
  }
}
