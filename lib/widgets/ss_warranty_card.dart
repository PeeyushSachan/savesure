import 'package:flutter/material.dart';

import 'package:responsive_media/responsive_media.dart';

class SsWarrantyCard extends StatefulWidget {
  const SsWarrantyCard({Key? key}) : super(key: key);

  @override
  State<SsWarrantyCard> createState() => _SsWarrantyCardState();
}

class _SsWarrantyCardState extends State<SsWarrantyCard> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    ResponsiveMedia.init(context);
    final rm = ResponsiveMedia.instance;
    // Initialize here
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height:
          rm.getResponsiveBox(rm.shortestSide * 0.5, rm.shortestSide * 0.55),
      width: rm.screenWidth,
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
            top: rm.shortestSide * .02,
            left: rm.shortestSide * .02,
            child: Row(
              children: [
                rm.gapS(isHorizontal: true, scale: 0.5),
                Transform.scale(
                  scale: rm.shortestSide * .0054, //42 pixels
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
                rm.gapS(isHorizontal: true),
                RichText(
                    text: TextSpan(
                        text: "23 ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: rm.h1,
                            fontWeight: FontWeight.bold),
                        children: [
                      TextSpan(
                          text: "Days Left \n",
                          style: TextStyle(
                              fontSize: rm.h2, fontWeight: FontWeight.normal),
                          children: [
                            TextSpan(
                                text: "Expiry Date: 30 Jan 25",
                                style: TextStyle(
                                    fontSize: rm.h5,
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
                        height: rm.shortestSide * .079,
                        width: rm.shortestSide * 0.27,
                        child: Center(
                          child: Text(
                            "Warrenty",
                            style: TextStyle(
                                color: Color(0xD9FF4703), fontSize: rm.caption),
                          ),
                        ),
                      ),
                    ]),
                  )
                ],
              ),
              rm.gapL(),
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
                              fontSize: rm.title,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    rm.gap(
                      size: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "hardware issue, and report for an additional  2 years includes free services and 24/7 customer support",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: rm.h5,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                    rm.gap(size: 15),
                    Row(
                      spacing: rm.shortestSide * 0.023,
                      children: [
                        SizedBox(
                          height: rm.shortestSide * 0.069,
                          width: rm.shortestSide * 0.2,
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
                                    fontSize: rm.shortestSide * 0.023,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                        SizedBox(
                          height: rm.shortestSide * 0.069,
                          width: rm.shortestSide * 0.069,
                          child: IconButton.outlined(
                            style: OutlinedButton.styleFrom(
                                elevation: 5,
                                side: BorderSide(
                                    color: Color.fromARGB(255, 218, 87, 5)),
                                padding: EdgeInsets.all(0),
                                backgroundColor: Colors.white),
                            onPressed: () {},
                            icon: Icon(Icons.download),
                            iconSize: rm.h4,
                            color: Color.fromARGB(255, 218, 87, 5),
                          ),
                        ),
                        SizedBox(
                          height: rm.shortestSide * 0.069,
                          width: rm.shortestSide * 0.2,
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
                                    fontSize: rm.shortestSide * 0.023,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                        SizedBox(
                          height: rm.shortestSide * 0.069,
                          width: rm.shortestSide * 0.069,
                          child: IconButton.outlined(
                            style: OutlinedButton.styleFrom(
                                elevation: 5,
                                side: BorderSide(
                                    color: Color.fromARGB(255, 218, 87, 5)),
                                padding: EdgeInsets.all(0),
                                backgroundColor: Colors.white),
                            onPressed: () {},
                            icon: Icon(
                              Icons.delete,
                              size: rm.h4,
                            ),
                            iconSize: rm.h4,
                            color: Color.fromARGB(255, 218, 87, 5),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
