import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:responsive_media/responsive_media.dart';
import 'package:savesure/core/theme/app_colors.dart';

class FullCardView extends StatefulWidget {
  const FullCardView({Key? key}) : super(key: key);

  @override
  State<FullCardView> createState() => _FullCardViewState();
}

class _FullCardViewState extends State<FullCardView> {
  @override
  Widget build(BuildContext context) {
    ResponsiveMedia.init(context); // Initialize here
    final rm = ResponsiveMedia.instance;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
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

            //  color: Colors.transparent,
            height: rm.screenHeight,
            child: Padding(
              padding: rm.paddingAll(5),
              child: Column(
                children: [
                  Container(
                    width: rm.screenWidth,
                    height: rm.shortestSide * 0.8,
                    child: Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            rm.gapL(),
                            SingleChildScrollView(
                              child: Image.network(
                                "https://m.media-amazon.com/images/I/61UMJm9fxOL._SY879_.jpg",

                                // height: 400,
                                width: rm.screenWidth * 0.9,
                                fit: BoxFit.cover,
                              ),
                            )
                          ],
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Container(
                            height: rm.shortestSide * 0.08,
                            width: rm.shortestSide * 0.20,
                            decoration: BoxDecoration(
                              color: AppColors.primaryOrange,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                "30D Left",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: rm.buttonText),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 5,
                          right: 10,
                          child: Container(
                            child: Hero(
                              tag: "fullview",
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                            transitionDuration:
                                                Duration(seconds: 1),
                                            pageBuilder: (_, __, ___) {
                                              return Hero(
                                                tag: "fullview",
                                                child: Scaffold(
                                                  appBar: AppBar(
                                                    leading: IconButton(
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        icon: Icon(
                                                            Icons.arrow_back)),
                                                  ),
                                                  body: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child:
                                                        SingleChildScrollView(
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            child:
                                                                Image.network(
                                                              "https://m.media-amazon.com/images/I/61UMJm9fxOL._SY879_.jpg",

                                                              // height: 400,
                                                              width:
                                                                  rm.screenWidth *
                                                                      10,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }));
                                  },
                                  icon: Icon(
                                    Icons.fullscreen,
                                    size: 25,
                                    color: AppColors.primaryOrange,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //dateofperchase.png

                  rm.gap(),
                  Row(
                    children: [
                      Image.asset(
                        'assets/themeAssets/card/title.png',
                        width: 25,
                      ),
                      rm.gapXS(isHorizontal: true),
                      Text.rich(TextSpan(
                          text: "Event name: ",
                          style: TextStyle(
                              color: Colors.white, fontSize: rm.subtitle),
                          children: [TextSpan(text: "Tech Conference 2025")]))
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/themeAssets/card/dateofperchase.png',
                        width: 25,
                      ),
                      rm.gapXS(isHorizontal: true),
                      Text.rich(TextSpan(
                          text: "Purchase Date: ",
                          style: TextStyle(
                              color: Colors.white, fontSize: rm.subtitle),
                          children: [TextSpan(text: "January 1, 2025")]))
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/themeAssets/card/expiry.png',
                        width: 25,
                      ),
                      rm.gapXS(isHorizontal: true),
                      Text.rich(TextSpan(
                          text: "Expiry: ",
                          style: TextStyle(
                              color: Colors.white, fontSize: rm.subtitle),
                          children: [TextSpan(text: "January 30, 2025")]))
                    ],
                  ),

                  //

                  rm.gapL(),
                  Column(
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
                        size: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "hardware issue, and report for an additional  2 years includes free services and 24/7 customer support hardware issue, and report for an additional  2 years includes free services and 24/7 customer support",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: rm.h4,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                      rm.gap(size: 15),
                    ],
                  ),

                  rm.gapL(),
                  SizedBox(
                    height: rm.shortestSide * 0.15,
                    width: rm.shortestSide * 0.15,
                    child: IconButton.outlined(
                      style: OutlinedButton.styleFrom(
                          elevation: 5,
                          side: BorderSide(
                              color: Color.fromARGB(255, 218, 87, 5)),
                          padding: EdgeInsets.all(0),
                          backgroundColor: Colors.white),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: rm.h1 * 1.5,
                      ),
                      iconSize: rm.h5,
                      color: Color.fromARGB(255, 218, 87, 5),
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
