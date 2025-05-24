import 'package:flutter/material.dart';


class Test2 extends StatelessWidget {

  
const Test2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(

      body: Column(children: [

        Text("Data is Good", style: TextStyle(

          fontSize: 30
        ),
        
        
        ),

         Text("Data is Good", style: TextStyle(

          fontSize: 30,

          fontFamily:"outfit"
        ),
         )
      ],),
    );
  }
}