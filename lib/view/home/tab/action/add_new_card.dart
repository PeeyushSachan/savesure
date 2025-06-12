import 'package:flutter/material.dart';
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
      body: Padding(
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
Row(

  mainAxisAlignment: MainAxisAlignment.spaceBetween,

  children: [
     Text('Type of Card: ' ,style: TextStyle(
        fontWeight: FontWeight.w700,

      fontSize: rm.h3
     ),),

   
  rm.gapS( isHorizontal: true),
            Expanded(
              child: TextField(
  //    controller: Controller,
      style: TextStyle(fontSize: rm.h3, color: AppColors.primaryOrange),
      decoration: InputDecoration(
        hintText: "Choose card type",
        hintStyle: TextStyle(fontSize: rm.h3,
      
        
    ),
        focusedBorder: OutlineInputBorder(
      //      borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: AppColors.primaryOrange)),
        contentPadding: 
            EdgeInsets.symmetric(vertical: rm.shortestSide * 0.03, horizontal: rm.shortestSide*0.02),
        suffixIcon: Padding(
          padding: rm.paddingHorizontal(3),
          child: Icon(
           Icons.arrow_drop_down,
            color: AppColors.primaryOrange,
            size: rm.shortestSide * 0.08,
          ),
        ),
        border: OutlineInputBorder(
         
        ),
      ),
    )
            )
  ],
),


           
           
          ],
        ),
      ),
    );
  }
}
