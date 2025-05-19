import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_media/responsive_media.dart';
import 'package:savesure/core/theme/app_colors.dart';

class SsNotificationlist  extends StatelessWidget {
  const SsNotificationlist ({super.key});

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
              border: Border.all(color: AppColors.borderOrange)),
          child: Column(
            children: [
                
            
             Container(
          padding:EdgeInsets.symmetric( vertical: 15),
               color: const Color.fromARGB(117, 246, 215, 194),
               child: Padding(
                padding: rm.paddingHorizontal(3),
                  child: Row(
                    
                    children: [
                  
                      SizedBox(
                  
                        width: 40,
                        height: 40,
                        child: ElevatedButton(
                                        
                                        
                                      
                          
                          style: ElevatedButton.styleFrom(
                                
                                padding: EdgeInsets.zero,
                                elevation: 0.2,
                            shape: RoundedRectangleBorder(
                                        
                                   
                              borderRadius: BorderRadius.circular(8)
                            )
                          ),
                          onPressed: (){}, child:Icon(Icons.arrow_back_ios_new, size: 15,) ,),
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
                                style: TextStyle(fontSize: rm.h4, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
             ),


             Container(

              height: 36,
          color:     AppColors.backgroundOrange,
          child: Center(

            child: Text("14 New Notifications", style: TextStyle(

              color: AppColors.primaryOrange
            ),),
          ),
             ),
             
             Expanded(
               child: ListView.builder
               (itemCount: 5,
               
               itemBuilder: (index , context)

               
               {
                
                
               
               return ListTile(
               
                 title: Text("Upcoming Event: Tech Expo 2025!", style:  TextStyle( fontWeight: FontWeight.w800),),
               
                 subtitle: Text("You just made a transfer of 45.00 to Trevor Philips on November 18, 2024 at 09:31 AM. If you did not do this, please call 11223344 immediately."),
              
              trailing: Icon(Icons.arrow_forward_ios , size: 12, color: Colors.black,),
              
               );
               
               
               }),
             )
            ],
          ),
        ),
      ),
    );
  }
}