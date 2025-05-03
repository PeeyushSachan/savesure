import 'package:flutter/material.dart';

class Login2 extends StatefulWidget {
  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  // ✅ Controllers declared outside build method
  late TextEditingController emailController;
  late TextEditingController passController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ✅ Allows layout to adjust when keyboard appears
      resizeToAvoidBottomInset: true,
      body: LayoutBuilder(
        // ✅ LayoutBuilder used here
        builder: (context, constraints) {
          final screenHeight = constraints.maxHeight;
          final screenWidth = constraints.maxWidth;
          Orientation orientation = MediaQuery.of(context).orientation;

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              // ✅ Prevents overflow when keyboard opens
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: orientation == Orientation.portrait
                        ? screenHeight * 0.1
                        : screenWidth * 0.05,
                  ),
                  Container(
                    child: Text.rich(TextSpan(
                      text: "Login2 To Yours ",
                      style:
                          TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: "mNews\n",
                          style: TextStyle(color: Colors.blue),
                        ),
                        TextSpan(text: "Account Now")
                      ],
                    )),
                    height: orientation == Orientation.portrait
                        ? screenHeight * 0.12
                        : screenWidth * 0.12,
                    width: screenWidth,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: orientation == Orientation.portrait
                        ? screenHeight * 0.04
                        : screenWidth * 0.04,
                    child: Text("Email",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    width: screenWidth,
                    height: orientation == Orientation.portrait
                        ? screenHeight * 0.08
                        : screenWidth * 0.08,
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: "Your Active Email", // ✅ Fixed typo
                        hintStyle: TextStyle(color: Colors.grey),
                        suffixIcon: Icon(Icons.email),
                        filled: true,
                        fillColor: const Color.fromARGB(248, 232, 232, 235),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: orientation == Orientation.portrait
                        ? screenHeight * 0.04
                        : screenWidth * 0.04,
                    child: Text("Password",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    width: screenWidth,
                    height: orientation == Orientation.portrait
                        ? screenHeight * 0.08
                        : screenWidth * 0.08,
                    child: TextField(
                      controller: passController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Your Active Password", // ✅ Fixed typo
                        hintStyle: TextStyle(color: Colors.grey),
                        suffixIcon: Icon(Icons.lock),
                        filled: true,
                        fillColor: const Color.fromARGB(248, 232, 232, 235),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: orientation == Orientation.portrait
                        ? screenHeight * 0.02
                        : screenWidth * 0.02,
                  ),
                  SizedBox(
                    width: screenWidth,
                    height: orientation == Orientation.portrait
                        ? screenHeight * 0.07
                        : screenWidth * 0.07,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        onPressed: () {
                          // ✅ You can add validation here later
                        },
                        child: Text(
                          "Submit",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: orientation == Orientation.portrait
                        ? screenHeight * 0.01
                        : screenWidth * 0.01,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          color: Colors.grey,
                          height: 1,
                          width: screenWidth * 0.41,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text("OR"),
                        ),
                        Container(
                          color: Colors.grey,
                          height: 1,
                          width: screenWidth * 0.41,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  InkWell(
                    onTap: () {
                      // ✅ Add Google SignIn logic
                    },
                    child: Container(
                      height: orientation == Orientation.portrait
                          ? screenHeight * 0.08
                          : screenWidth * 0.08,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/Apple.png",
                              height: 26,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "oogle",
                              style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Container(
                    alignment: Alignment.center,
                    height: orientation == Orientation.portrait
                        ? screenHeight * 0.08
                        : screenWidth * 0.04,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have mNews account yet?",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {
                            // ✅ Navigate to register screen
                          },
                          child: Text(
                            "Create One",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
