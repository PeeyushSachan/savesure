import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_media/responsive_media.dart';
import 'package:savesure/core/theme/app_colors.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    ResponsiveMedia.init(context); // Initialize here

    final rm = ResponsiveMedia.instance;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
             
          width: 350,
          height: 560,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              border: Border.all(color: AppColors.primaryOrange)),
          child: Column(
            children: [
                
              Container(
                    child: rm.gapM(),
                   ),
             Padding(
              padding: rm.paddingHorizontal(3),
                child: Row(
                  
                  children: [
                
                    SizedBox(

                      width: 40,
                      height: 40,
                      child: ElevatedButton(
                                      
                                      
                                      
                        
                        style: ElevatedButton.styleFrom(
                              
                              padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                                      
                                 
                            borderRadius: BorderRadius.circular(8)
                          )
                        ),
                        onPressed: (){}, child:Icon(FontAwesomeIcons.lessThan, size: 15,) ,),
                    ),
                
                   
                    Expanded(
                
                     
                      child: Center(
                        child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.bell,
                              color: AppColors.primaryOrange,
                              size: 20,
                            ),
                          rm.gapXS(isHorizontal: true),
                            Text(
                              "Notification",
                              style: TextStyle(fontSize: rm.h4),
                            )
                          ],
                        ),
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
