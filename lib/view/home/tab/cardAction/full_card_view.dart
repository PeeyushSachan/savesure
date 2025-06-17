import 'package:flutter/material.dart';
import 'package:responsive_media/responsive_media.dart';
import 'package:savesure/core/theme/app_colors.dart';

class FullCardView extends StatelessWidget {
const FullCardView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
      ResponsiveMedia.init(context); // Initialize here
    final rm = ResponsiveMedia.instance;
    return Scaffold(

      body: Column(

        children: [



Container(

  color: AppColors.backgroundOrange,

width: rm.screenWidth,
height: 800,
  child: Stack(

    children: [


  Image.network("https://m.media-amazon.com/images/I/61UMJm9fxOL._SY879_.jpg", fit: BoxFit.fill,)
    ],



  ),


)
        ],
      ),



      
    );
  }
}