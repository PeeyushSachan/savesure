import 'package:flutter/material.dart';


class SuccessResetScreen extends StatefulWidget {
  const SuccessResetScreen({super.key});

  @override
  State<SuccessResetScreen> createState() => _SuccessResetScreenState();
}

class _SuccessResetScreenState extends State<SuccessResetScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05,
            vertical: screenHeight * 0.08,
          ),
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.04),
              Center(child: Image.asset("assets/image 6.png")),
              SizedBox(height: screenHeight * 0.03),
              Text(
                "Password reset successfully",
                style: TextStyle(
                    color: Colors.deepOrangeAccent,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: screenHeight * 0.003),
              Text(
                "Please re-login with your new password.",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              SizedBox(height: screenHeight * 0.3),
              _buildGradientButton(screenWidth, screenHeight, "Home", () {})
            ],
          ),
        ));
  }
}

Widget _buildGradientButton(double screenWidth, double screenHeight,
    String text, VoidCallback onPressed) {
  return SizedBox(
    width: double.infinity,
    height: screenHeight * 0.06,
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
          style: TextStyle(color: Colors.white, fontSize: screenWidth * 0.045),
        ),
      ),
    ),
  );
}