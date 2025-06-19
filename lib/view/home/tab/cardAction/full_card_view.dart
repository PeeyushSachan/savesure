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

      body: Container(

        color: const Color.fromARGB(255, 241, 127, 61),
        child: Padding(
          padding: rm.paddingAll(5),
          child: Column(
          
            children: [
          
          
          
          
          
          Container(
          
            
          
          width: rm.screenWidth,
          height: rm.shortestSide*0.6,
            child: Stack(
              children:[
                
                
             
                 Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                children: [
                        rm.gapL(),
                        
                        
              SingleChildScrollView(
                child: Image.network("https://m.media-amazon.com/images/I/61UMJm9fxOL._SY879_.jpg",
                
                         // height: 400,
                width: rm.screenWidth*0.9,
                 fit: BoxFit.cover,),
              )
                ],
                        
                        
                        
              ),


                 Positioned(
                  top:  10,
                  right: 10,
                   child: Container(
                     
           height: rm.shortestSide * 0.08,
                   width: rm.shortestSide*0.20  ,
                    decoration: BoxDecoration(
                     color: AppColors.primaryOrange,
                   borderRadius: BorderRadius.circular(5),

                    ),
                    child: Center(
                      child: Text(
                        "30 Days Left",
                        style: TextStyle(
                            color: Colors.white, fontSize: rm.buttonText ),
                      ),
                    ),
                                   ),
                 ),




                    Positioned(
                  bottom:  5,
                  right: 10,
                   child: Container(
                     
           
                    
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.fullscreen , size: 25, color: AppColors.primaryOrange,)),
                                   ),
                 ),
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