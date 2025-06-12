import 'package:flutter/material.dart';
import 'package:responsive_media/responsive_media.dart';

class SuccessResetScreen extends StatefulWidget {
  const SuccessResetScreen({super.key});

  @override
  State<SuccessResetScreen> createState() => _SuccessResetScreenState();
}

class _SuccessResetScreenState extends State<SuccessResetScreen> {
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
            children: [
              SizedBox(height: rm.screenHeight * 0.04),
              Center(child: Image.asset("assets/image 6.png")),
              SizedBox(height: rm.screenHeight * 0.03),
              Text(
                "Password reset successfully",
                style: TextStyle(
                    color: Colors.deepOrangeAccent,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: rm.screenHeight * 0.003),
              Text(
                "Please re-login with your new password.",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              rm.gapXL(),
              _buildGradientButton(
                  rm.shortestSide, rm.screenHeight, "Home", () {})
            ],
          ),
        ));
  }
}

Widget _buildGradientButton(double shortestSide, double screenHeight,
    String text, VoidCallback onPressed) {
  return SizedBox(
    width: double.infinity,
    height: shortestSide * 0.16,
    child: DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFFA6C12), Color(0xFFC64AA1)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: shortestSide * 0.045),
        ),
      ),
    ),
  );
}
