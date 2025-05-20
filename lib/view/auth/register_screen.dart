import 'package:flutter/material.dart';
import 'package:savesure/core/theme/app_colors.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool passwordVisible = true;
  bool confirmPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool isLargeScreen = size.width > 600;

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(isLargeScreen ? 40 : 15),
            child: SizedBox(
              width: isLargeScreen ? 500 : double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Create a New Account",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: isLargeScreen ? 40 : 30),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Sign up now to access your account and get started!",
                    style: TextStyle(
                        fontSize: isLargeScreen ? 22 : 18, color: Colors.grey),
                  ),
                  SizedBox(height: 20),
                  _buildTextField("Full Name", "assets/Vector (1).png"),
                  _buildTextField("Email", "assets/mail.png"),
                  _buildPasswordField(
                      "Password", "assets/Vector.png", passwordVisible, () {
                    setState(() => passwordVisible = !passwordVisible);
                  }),
                  _buildConfirmPasswordField("Confirm Password",
                      "assets/Vector.png", confirmPasswordVisible, () {
                    setState(
                        () => confirmPasswordVisible = !confirmPasswordVisible);
                  }),
                  _buildTextField("Profession", "assets/Vector (2).png"),
                  _buildTextField("Gender", "assets/Vector (3).png"),
                  SizedBox(height: 30),
                  _buildGradientButton(),
                  SizedBox(height: 30),
                  Center(
                      child: Text("or Create Account",
                          style: TextStyle(color: Colors.grey))),
                  SizedBox(height: 40),
                  Wrap(
                    spacing: 35,
                    alignment: WrapAlignment.center,
                    children: [
                      "assets/Group.png",
                      "assets/Facebook.png",
                      "assets/Apple.png"
                    ].map((image) => _buildSocialIcon(image)).toList(),
                  ),
                  SizedBox(height: 15),
                  _buildFooterText(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String hintText, String iconPath) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Image.asset(iconPath, color: Colors.grey),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        ),
      ),
    );
  }

  Widget _buildPasswordField(String hintText, String iconPath, bool obscureText,
      VoidCallback toggleVisibility) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        obscuringCharacter: '*',
        obscureText: obscureText,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: AppColors.primaryOrange)),
          hintText: hintText,
          prefixIcon: Image.asset(
            iconPath,
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
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        keyboardType: TextInputType.visiblePassword,
      ),
    );
  }

  Widget _buildGradientButton() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xFFFA6C12), Color(0xFFC64AA1)]),
          borderRadius: BorderRadius.circular(15),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
          onPressed: () {},
          child: Text("Make a New Account",
              style: TextStyle(color: Colors.white, fontSize: 15)),
        ),
      ),
    );
  }

  Widget _buildSocialIcon(String imagePath) {
    return Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Image.asset(imagePath),
    );
  }

  Widget _buildFooterText() {
    return Column(
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: TextStyle(color: Colors.grey, fontSize: 15),
            children: [
              TextSpan(text: 'By "Login Account", you agree to the '),
              TextSpan(
                  text: 'Terms of Use',
                  style: TextStyle(
                      color: Color(0xFFC64AA1), fontWeight: FontWeight.bold)),
              TextSpan(text: " and "),
              TextSpan(
                  text: "Privacy Policy",
                  style: TextStyle(
                      color: Color(0xFFC64AA1), fontWeight: FontWeight.bold))
            ],
          ),
        ),
        SizedBox(height: 30),
        RichText(
          text: TextSpan(
            style: TextStyle(color: Colors.grey, fontSize: 15),
            children: [
              TextSpan(
                  text: "Have an account?",
                  style: TextStyle(color: Colors.black)),
              TextSpan(
                  text: " Login Account",
                  style: TextStyle(
                      color: AppColors.primaryOrange,
                      fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ],
    );
  }
}
