import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_media/responsive_media.dart';
import 'package:savesure/core/theme/app_colors.dart';

class Test extends StatelessWidget {
const Test({ super.key });

  @override
  Widget build(BuildContext context){
    ResponsiveMedia.init(context); // Initialize here

final rm =ResponsiveMedia.instance;
    return Scaffold(
body: Padding(
  padding: rm.paddingAll(6),
  child: Container(
  
    width: 350,
    height: 560,
  
    decoration:BoxDecoration(
  borderRadius: BorderRadius.all(
  
  Radius.circular(15)
  ),
      border:Border.all(
  
        color: AppColors.primaryOrange
      
      )
    ),
  

  child: Column(

    children: [


      SizedBox(

        width: rm.shortestSide*0.053,
        child: Row(

          children: [

            Center( 

child: Row(

  children: [

    Icon(FontAwesomeIcons.bell, color: AppColors.primaryOrange, size: 20,),

   

    Text("Notification",  style: TextStyle(fontSize: rm.h4),)
  ],
),

            )
          ],
        
          
        ),
      )
    ],
  ),
    
  ),
),
      
    );
  }
}