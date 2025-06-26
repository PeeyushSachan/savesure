import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_media/responsive_media.dart';
import 'package:savesure/core/theme/app_colors.dart';

import 'package:savesure/widgets/ss_textField.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var rm;

  String filePathText = "";
  String fileNameText = "";

  void filePicker() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ["jpg", "png"],
    );

    if (result != null && result.files.first.path != null) {
      print(result.files.first.name);
      setState(() {
        filePathText = result.files.first.path!;

        fileNameText = result.files.first.name;
      });
    } else {
      print("Failed");
    }
  }

  @override
  Widget build(BuildContext context) {
    ResponsiveMedia.init(context); // insitalization

    rm = ResponsiveMedia.instance; // Use after init(context)
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
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
                                borderRadius: BorderRadius.circular(12))),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          size: 25,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Text(
                    "Personal Info",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
              SsTextField(
                  rm: rm, hintText: "Peeyush Sachan", icon: Icons.badge),
              SizedBox(
                height: 15,
              ),
              SsTextField(
                  rm: rm, hintText: "Sachana766@gmail.com", icon: Icons.email),
              SizedBox(
                height: 15,
              ),
              SsTextField(rm: rm, hintText: "6387302231", icon: Icons.phone),
              SizedBox(
                height: 15,
              ),
              SsTextField(rm: rm, hintText: "Male", icon: Icons.male),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: double.infinity,
                height: rm.shortestSide * 0.16,
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
                    onPressed: () {
                      EditProfileScreen(context: context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Edit Profile",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          FontAwesomeIcons.penToSquare,
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
                height: rm.shortestSide * 0.16,
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
                      Icon(
                        Icons.logout,
                        color: AppColors.primaryOrange,
                      )
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

  EditProfileScreen({required BuildContext context}) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            child: Padding(
              padding: rm.paddingHorizontal(5.0),
              child: Column(
                children: [
                  rm.gapXL(),
                  Row(
                    children: [
                      Text(
                        "Edit your Profile",
                        style: TextStyle(
                            fontSize: rm.title, color: AppColors.primaryOrange),
                      ),
                    ],
                  ),
                  rm.gapL(),
                  rm.gapM(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          'First Name',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: rm.h2),
                        ),
                      ),
                      rm.gapS(isHorizontal: true),
                      Expanded(
                          flex: 5,
                          child: TextField(
                            keyboardType: TextInputType.text,
                            //    controller: Controller,
                            style: TextStyle(
                                fontSize: rm.h3,
                                color: AppColors.primaryOrange),
                            decoration: InputDecoration(
                              hintText: "Enter Your First Name",
                              hintStyle: TextStyle(
                                fontSize: rm.h3,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  //      borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                      color: AppColors.primaryOrange)),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: rm.shortestSide * 0.03,
                                  horizontal: rm.shortestSide * 0.02),
                              border: OutlineInputBorder(),
                            ),
                          ))
                    ],
                  ),
                  rm.gapM(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Last Name',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: rm.h2),
                        ),
                      ),
                      rm.gapS(isHorizontal: true),
                      Expanded(
                          flex: 5,
                          child: TextField(
                            keyboardType: TextInputType.text,
                            //    controller: Controller,
                            style: TextStyle(
                                fontSize: rm.h3,
                                color: AppColors.primaryOrange),
                            decoration: InputDecoration(
                              hintText: "Enter Your Last Name ",
                              hintStyle: TextStyle(
                                fontSize: rm.h3,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  //      borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                      color: AppColors.primaryOrange)),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: rm.shortestSide * 0.03,
                                  horizontal: rm.shortestSide * 0.02),
                              border: OutlineInputBorder(),
                            ),
                          ))
                    ],
                  ),
                  rm.gapM(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Gender: ',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: rm.h2),
                        ),
                      ),
                      rm.gapS(isHorizontal: true),
                      Expanded(
                          flex: 5,
                          child: TextField(
                            //    controller: Controller,
                            style: TextStyle(
                                fontSize: rm.h3,
                                color: AppColors.primaryOrange),
                            decoration: InputDecoration(
                              hintText: "Choose card type",
                              hintStyle: TextStyle(
                                fontSize: rm.h3,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  //      borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                      color: AppColors.primaryOrange)),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: rm.shortestSide * 0.03,
                                  horizontal: rm.shortestSide * 0.02),
                              suffixIcon: Padding(
                                padding: rm.paddingHorizontal(3.0),
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  color: AppColors.primaryOrange,
                                  size: rm.shortestSide * 0.08,
                                ),
                              ),
                              border: OutlineInputBorder(),
                            ),
                          ))
                    ],
                  ),
                  rm.gapM(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Email: ',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: rm.h2),
                        ),
                      ),
                      rm.gapS(isHorizontal: true),
                      Expanded(
                          flex: 5,
                          child: TextField(
                            keyboardType: TextInputType.datetime,
                            //    controller: Controller,
                            style: TextStyle(
                                fontSize: rm.h3,
                                color: AppColors.primaryOrange),
                            decoration: InputDecoration(
                              hintText: "Enter The Email",
                              hintStyle: TextStyle(
                                fontSize: rm.h3,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  //      borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                      color: AppColors.primaryOrange)),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: rm.shortestSide * 0.03,
                                  horizontal: rm.shortestSide * 0.02),
                              border: OutlineInputBorder(),
                            ),
                          ))
                    ],
                  ),
                  rm.gapM(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          ' Mobile: ',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: rm.h2),
                        ),
                      ),
                      rm.gapS(isHorizontal: true),
                      Expanded(
                          flex: 5,
                          child: TextField(
                            keyboardType: TextInputType.datetime,
                            //    controller: Controller,
                            style: TextStyle(
                                fontSize: rm.h3,
                                color: AppColors.primaryOrange),
                            decoration: InputDecoration(
                              hintText: "Enter The Mobile No.",
                              hintStyle: TextStyle(
                                fontSize: rm.h3,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  //      borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                      color: AppColors.primaryOrange)),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: rm.shortestSide * 0.03,
                                  horizontal: rm.shortestSide * 0.02),
                              border: OutlineInputBorder(),
                            ),
                          ))
                    ],
                  ),
                  rm.gapM(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Profile Pic: ',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: rm.h2),
                        ),
                      ),
                      rm.gapS(isHorizontal: true),
                      Expanded(
                          flex: 5,
                          child: ElevatedButton(
                              onPressed: () {
                                filePicker();
                              },
                              child: Text("choose file"))

                          //  TextField(
                          //   readOnly: true,
                          //   //     keyboardType: TextInputType,
                          //   //    controller: Controller,
                          //   style: TextStyle(
                          //       fontSize: rm.h3, color: AppColors.primaryOrange),
                          //   decoration: InputDecoration(
                          //     hintText: "Upload Image or PDF",
                          //     hintStyle: TextStyle(
                          //       fontSize: rm.h3,
                          //     ),
                          //     focusedBorder: OutlineInputBorder(
                          //         //      borderRadius: BorderRadius.circular(15),
                          //         borderSide:
                          //             BorderSide(color: AppColors.primaryOrange)),
                          //     contentPadding: EdgeInsets.symmetric(
                          //         vertical: rm.shortestSide * 0.03,
                          //         horizontal: rm.shortestSide * 0.02),
                          //     border: OutlineInputBorder(),
                          //   ),
                          // )

                          ),
                    ],
                  ),
                  Text(fileNameText),
                  rm.gapXL(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // width: double.infinity,
                        height: rm.shortestSide * 0.10,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Back",
                            style: TextStyle(fontSize: rm.screenWidth * 0.045),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: rm.shortestSide * 0.10,
                          width: rm.shortestSide * 0.20,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xFFFA6C12), Color(0xFFC64AA1)]),
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.amber,
                          ),
                          child: Center(
                            child: Text(
                              "Save",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: rm.buttonText * 1.5),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  rm.gapL()
                ],
              ),
            ),
          );
        });
  }
}
