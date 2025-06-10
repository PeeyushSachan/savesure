import 'package:flutter/material.dart';
import 'package:responsive_media/responsive_media.dart';
import 'package:savesure/core/theme/app_colors.dart';
import 'package:savesure/widgets/ss_textField.dart';


class AddNewCard extends StatelessWidget {
const AddNewCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){


        ResponsiveMedia.init(context); // Initialize here
    final rm = ResponsiveMedia.instance;
    return Scaffold(


 body:  Padding(
        padding: rm.paddingHorizontal(10),
        child: Column(
      
        
        
        children: [
          rm.gapXL(),
        
        Row(
          children: [
        Text("Add Card details", style: TextStyle(
        
          fontSize: rm.h4,
        
          color: AppColors.primaryOrange
        ),
        
        
        ),
          ],
        ),
      
      
        Column(
      
          children: [
      
      
      Text('Type of Card: ')
      
          ],
        ),
      
        Column(
          children: [
      
            SsTextField(rm: rm, hintText: "Choose your Type Card", icon: Icons.home, contentPadding:  EdgeInsets.symmetric(vertical: rm.shortestSide * 0.02),)
      
      
          ],
        )
        
        
        
        
        ],
        
        ),
      ),
    );
  }
}