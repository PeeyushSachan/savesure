import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SsWarrantyCard extends StatefulWidget {
  const SsWarrantyCard({Key? key}) : super(key: key);

  @override
  State<SsWarrantyCard> createState() => _SsWarrantyCardState();
}

class _SsWarrantyCardState extends State<SsWarrantyCard> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          height: 197,
          width: screenWidth,
          child: Stack(
            children: [
              // Background Image
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/themeAssets/card/background.png'),
                  ),
                ),
              ),

              // Gradient Overlay
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xD9FF4703), // with 80% opacity
                      Color(0xD9FF6B0F),
                      Color(0xD9FF4202),
                    ],
                    stops: [0.0, 0.52, 1.0],
                  ),
                ),
              ),

              Positioned(
                top: 12.5,
                left: 12.5,
                child: Row(
                  children: [
                    Transform.scale(
                      scale: 2.33, //42 pixels
                      child: Checkbox(
                          checkColor: Colors.white,
                          value: isChecked,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(21)),
                          fillColor: isChecked == true
                              ? WidgetStateProperty.all(Color(0XFF4CAF50))
                              : WidgetStateProperty.all(
                                  Color.fromARGB(255, 255, 255, 255)),
                          side: BorderSide(
                              width: 1,
                              color: const Color.fromARGB(255, 218, 87, 5)),
                          splashRadius: 5,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          }),
                    ),
                    SizedBox(width: 3),
                    RichText(
                        text: TextSpan(
                            text: "23 ",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            children: [
                          TextSpan(
                              text: "Days Left \n",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.normal),
                              children: [
                                TextSpan(
                                    text: "Expiry Date: 30 Jan 25",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal)),
                              ])
                        ]))
                  ],
                ),
              ),
              // Content on top
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 1, right: 1),
                        child: Stack(children: [
                          /*  Container(
                            height: 34,
                            width: 117,
                            decoration: BoxDecoration(color: Colors.blue), need ot be look on this
                          ),*/
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(30),
                                    topRight: Radius.circular(10))),
                            height: 34,
                            width: 117,
                            child: Center(
                              child: Text(
                                "Warrenty",
                                style: TextStyle(
                                    color: Color(0xD9FF4703), fontSize: 16),
                              ),
                            ),
                          ),
                        ]),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25, right: 12.5),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Laptop Buy Warrenty Card",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "hardware issue, and report for an additional  2 years includes free services and 24/7 customer support",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          spacing: 10,
                          children: [
                            SizedBox(
                              height: 30,
                              width: 85,
                              child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                      elevation: 5,
                                      side: BorderSide(color: Colors.white),
                                      padding: EdgeInsets.all(0),
                                      backgroundColor:
                                          Color.fromARGB(75, 49, 40, 40)),
                                  child: Text(
                                    "View Details",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                            SizedBox(
                              height: 32,
                              width: 32,
                              child: IconButton.outlined(
                                style: OutlinedButton.styleFrom(
                                    elevation: 5,
                                    side: BorderSide(
                                        color: Color.fromARGB(255, 218, 87, 5)),
                                    padding: EdgeInsets.all(0),
                                    backgroundColor: Colors.white),
                                onPressed: () {},
                                icon: Icon(Icons.download),
                                iconSize: 17,
                                color: Color.fromARGB(255, 218, 87, 5),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              width: 85,
                              child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                      elevation: 5,
                                      side: BorderSide(color: Colors.white),
                                      padding: EdgeInsets.all(0),
                                      backgroundColor:
                                          Color.fromARGB(75, 49, 40, 40)),
                                  child: Text(
                                    "Edit",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                            SizedBox(
                              height: 32,
                              width: 32,
                              child: IconButton.outlined(
                                style: OutlinedButton.styleFrom(
                                    elevation: 5,
                                    side: BorderSide(
                                        color: Color.fromARGB(255, 218, 87, 5)),
                                    padding: EdgeInsets.all(0),
                                    backgroundColor: Colors.white),
                                onPressed: () {},
                                icon: Icon(Icons.delete),
                                iconSize: 17,
                                color: Color.fromARGB(255, 218, 87, 5),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
