import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_media/responsive_media.dart';
import 'package:savesure/core/theme/app_colors.dart';
import 'package:savesure/widgets/ss_textField.dart';

class AddNewCard extends StatelessWidget {
  const AddNewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResponsiveMedia.init(context); // Initialize here
    final rm = ResponsiveMedia.instance;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: rm.paddingHorizontal(5),
          child: Column(
            children: [
              rm.gapXL(),
              Row(
                children: [
                  Text(
                    "Add Card details",
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
                      'Title',
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
                            fontSize: rm.h3, color: AppColors.primaryOrange),
                        decoration: InputDecoration(
                          hintText: "Enter The Product Name",
                          hintStyle: TextStyle(
                            fontSize: rm.h3,
                          ),
                          focusedBorder: OutlineInputBorder(
                              //      borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  BorderSide(color: AppColors.primaryOrange)),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: rm.shortestSide * 0.03,
                              horizontal: rm.shortestSide * 0.02),
                          border: OutlineInputBorder(),
                        ),
                      ))
                ],
              ),
              rm.gapM(),
              rm.gapM(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Description',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: rm.h2),
                    ),
                  ),
                  rm.gapS(isHorizontal: true),
                  Expanded(
                      flex: 5,
                      child: TextField(
                        maxLines: 4,
                        keyboardType: TextInputType.multiline,
                        //    controller: Controller,
                        style: TextStyle(
                            fontSize: rm.h3, color: AppColors.primaryOrange),
                        decoration: InputDecoration(
                          hintText: "Enter The Product Description",
                          hintStyle: TextStyle(
                            fontSize: rm.h3,
                          ),
                          focusedBorder: OutlineInputBorder(
                              //      borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  BorderSide(color: AppColors.primaryOrange)),
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
                      'Type of Card: ',
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
                            fontSize: rm.h3, color: AppColors.primaryOrange),
                        decoration: InputDecoration(
                          hintText: "Choose card type",
                          hintStyle: TextStyle(
                            fontSize: rm.h3,
                          ),
                          focusedBorder: OutlineInputBorder(
                              //      borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  BorderSide(color: AppColors.primaryOrange)),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: rm.shortestSide * 0.03,
                              horizontal: rm.shortestSide * 0.02),
                          suffixIcon: Padding(
                            padding: rm.paddingHorizontal(3),
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
                      'Purchase Data: ',
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
                            fontSize: rm.h3, color: AppColors.primaryOrange),
                        decoration: InputDecoration(
                          hintText: "Enter The Date OF Purchase",
                          hintStyle: TextStyle(
                            fontSize: rm.h3,
                          ),
                          focusedBorder: OutlineInputBorder(
                              //      borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  BorderSide(color: AppColors.primaryOrange)),
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
                      'Expriy Data: ',
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
                            fontSize: rm.h3, color: AppColors.primaryOrange),
                        decoration: InputDecoration(
                          hintText: "Enter The Date Of Expiry",
                          hintStyle: TextStyle(
                            fontSize: rm.h3,
                          ),
                          focusedBorder: OutlineInputBorder(
                              //      borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  BorderSide(color: AppColors.primaryOrange)),
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
                      'Upload: ',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: rm.h2),
                    ),
                  ),
                  rm.gapS(isHorizontal: true),
                  Expanded(
                      flex: 5,
                      child: TextField(
                        readOnly: true,
                        //     keyboardType: TextInputType,
                        //    controller: Controller,
                        style: TextStyle(
                            fontSize: rm.h3, color: AppColors.primaryOrange),
                        decoration: InputDecoration(
                          hintText: "Upload Image or PDF",
                          hintStyle: TextStyle(
                            fontSize: rm.h3,
                          ),
                          focusedBorder: OutlineInputBorder(
                              //      borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  BorderSide(color: AppColors.primaryOrange)),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: rm.shortestSide * 0.03,
                              horizontal: rm.shortestSide * 0.02),
                          border: OutlineInputBorder(),
                        ),
                      ))
                ],
              ),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
