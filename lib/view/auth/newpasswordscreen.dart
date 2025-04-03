/*import 'dart:ui';

import 'package:flutter/material.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  bool passwordVisible = true;
  bool confirmPasswordVisible = true;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

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
                Row(children: [
                  Image.asset(
                    "assets/image.png",
                    width: screenWidth * 0.15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Create A New Password",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth * 0.06,
                        ),
                      ),
                      Text(
                          "Your new password must be different \nfrom the previous one.",
                          style: TextStyle(fontSize: screenWidth * 0.04)),
                    ],
                  )
                ]),
                SizedBox(height: screenHeight * 0.04),
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
                SizedBox(height: screenHeight * 0.03),
                _buildConfirmPasswordField("Confirm Password",
                    "assets/Vector.png", confirmPasswordVisible, () {
                  setState(
                      () => confirmPasswordVisible = !confirmPasswordVisible);
                }),
                SizedBox(height: screenHeight * 0.04),
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
                        "Confirm new Password",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                SizedBox(
                  width: double.infinity,
                  height: screenHeight * 0.06,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Back",
                      style: TextStyle(fontSize: screenWidth * 0.045),
                    ),
                  ),
                ),
              ],
            )));
  }

  Widget _buildConfirmPasswordField(String hintText, String iconPath,
      bool obscureText, VoidCallback toggleVisibility) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        obscuringCharacter: '*',
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Image.asset(
            iconPath,
            color: Colors.grey,
          ),
          suffixIcon: IconButton(
            onPressed: toggleVisibility,
            icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        ),
        keyboardType: TextInputType.visiblePassword,
      ),
    );
  }
}*/

import 'package:flutter/material.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  bool passwordVisible = true;
  bool confirmPasswordVisible = true;

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/image.png",
                  width: screenWidth * 0.15,
                ),
                SizedBox(width: screenWidth * 0.03),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Create A New Password",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth * 0.06,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        "Your new password must be different from the previous one.",
                        style: TextStyle(fontSize: screenWidth * 0.04),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.04),
            _buildPasswordField1(
              "",
              "assets/Vector.png",
              passwordVisible,
              () => setState(() => passwordVisible = !passwordVisible),
            ),
            SizedBox(height: screenHeight * 0.03),
            _buildPasswordField(
              "Confirm Password",
              "assets/Vector.png",
              confirmPasswordVisible,
              () => setState(
                  () => confirmPasswordVisible = !confirmPasswordVisible),
            ),
            SizedBox(height: screenHeight * 0.2),
            _buildGradientButton(
                screenWidth, screenHeight, "Confirm New Password", () {}),
            SizedBox(height: screenHeight * 0.02),
            _buildOutlinedButton(screenWidth, "Back", () {}),
          ],
        ),
      ),
    );
  }

  Widget _buildPasswordField(String hintText, String iconPath, bool obscureText,
      VoidCallback toggleVisibility) {
    return TextField(
      obscuringCharacter: '*',
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child:
              Image.asset(iconPath, width: 20, height: 20, color: Colors.grey),
        ),
        suffixIcon: IconButton(
          onPressed: toggleVisibility,
          icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
      keyboardType: TextInputType.visiblePassword,
      textInputAction: TextInputAction.done,
    );
  }

  Widget _buildPasswordField1(String hintText, String iconPath,
      bool obscureText, VoidCallback toggleVisibility) {
    return TextField(
      obscuringCharacter: '*',
      obscureText: obscureText,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.deepOrange)),
        hintText: hintText,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child:
              Image.asset(iconPath, width: 20, height: 20, color: Colors.grey),
        ),
        suffixIcon: IconButton(
          onPressed: toggleVisibility,
          icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
      keyboardType: TextInputType.visiblePassword,
      textInputAction: TextInputAction.done,
    );
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
            style:
                TextStyle(color: Colors.white, fontSize: screenWidth * 0.045),
          ),
        ),
      ),
    );
  }

  Widget _buildOutlinedButton(
      double screenWidth, String text, VoidCallback onPressed) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(fontSize: screenWidth * 0.045),
        ),
      ),
    );
  }
}
