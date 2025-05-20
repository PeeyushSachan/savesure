import 'package:flutter/material.dart';
import 'package:savesure/core/theme/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: 80,
        ),
        Container(
          width: double.infinity,
          height: 70,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight, // 90 degrees = left to right
              colors: [
                Color.fromRGBO(255, 142, 60, 0.09),
                Color.fromRGBO(252, 200, 163, 0.2),
                Color.fromRGBO(255, 142, 60, 0.09),
              ],
              stops: [0.0, 0.46, 1.0], // matching your CSS percentages
            ),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(12)),
                  width: 50,
                  height: 50,
                  child: Center(child: Icon(Icons.arrow_back_ios))),
              SizedBox(
                width: 80,
              ),
              Text(
                "Personal Info",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Stack(children: [
          /*Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.red,
                width: 2, 
              ),
              image: DecorationImage(
                image: AssetImage(
                    'assets/themeAssets/card/image (2).png'), 
                fit: BoxFit.cover,
              ),
            ),
          ),*/

          Container(
            width: 110, // Outer size
            height: 110,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.red,
                width: 2,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(4),
              child: ClipOval(
                child: Image.asset(
                  'assets/themeAssets/card/image (2).png',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
          )
        ]),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    prefixIcon:
                        Image.asset("assets/themeAssets/card/Vector (4).png"),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15))),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Image.asset("assets/mail.png"),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15))),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                    prefixIcon:
                        Image.asset("assets/themeAssets/card/Vector (5).png"),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15))),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Image.asset("assets/Vector (3).png"),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Image.asset(
                        "assets/Polygon 2.png",
                        width: 20,
                        height: 20,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15))),
              ),
              SizedBox(
                height: 15,
              ),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Edit Profile",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Image.asset(
                          "assets/themeAssets/card/exit.png",
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepOrange),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          "Logout",
                          style: TextStyle(
                              fontSize: 15,
                              color: AppColors.primaryOrange,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        "assets/themeAssets/card/exit.png",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    ));
  }
}
