import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Stack(
              children: [
             
             
            
                     Column(

                      mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         SizedBox(
                                             
                              width: 50,
                              height: 50,
                              child: ElevatedButton(
                                              
                                              
                                            
                                
                                style: ElevatedButton.styleFrom(
                                      
                                      padding: EdgeInsets.zero,
                                      elevation: 0.2,
                                  shape: RoundedRectangleBorder(
                                              
                                         
                                    borderRadius: BorderRadius.circular(12)
                                  )
                                ),
                                onPressed: (){}, child:Icon(Icons.arrow_back_ios_new, size: 25, color: Colors.black,) ,),
                            ),
                       ],
                     ),
               
              Expanded(
                  child: Center(
                    child: Text(
                      "Personal Info",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
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
                  'assets/defaultuser.png',
          
                  
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
                        Icon(Icons.contact_mail),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15))),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mail),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15))),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                    prefixIcon:
                        Icon(Icons.call),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15))),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.groups),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(
Icons.arrow_drop_down,
                       size: 20,
                      ),
                    ),
                    border: OutlineInputBorder(
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
                    gradient: AppColors.buttonGradient,
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
                          width:10,
                        ),
                        Icon(FontAwesomeIcons.penToSquare , color: Colors.white,)
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
                     
                     Icon(Icons.logout, color: AppColors.primaryOrange,)
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