import 'package:flutter/material.dart';
import 'package:responsive_media/responsive_media.dart';
import 'package:savesure/core/theme/app_colors.dart';

class FullCardView extends StatelessWidget {
  const FullCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResponsiveMedia.init(context); // Initialize here
    final rm = ResponsiveMedia.instance;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: const Color.fromARGB(255, 241, 127, 61),
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
                              "30 Days Left",
                              style: TextStyle(
                                  color: Colors.white, fontSize: rm.buttonText),
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
                                                        Navigator.pop(context);
                                                      },
                                                      icon: Icon(
                                                          Icons.arrow_back)),
                                                ),
                                                body: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: SingleChildScrollView(
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          child: Image.network(
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

                //

                rm.gap(),
                Row(
                  children: [
                    Icon(
                      Icons.title,
                      color: Colors.white,
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
                    Icon(
                      Icons.title,
                      color: Colors.white,
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
                    Icon(
                      Icons.title,
                      color: Colors.white,
                    ),
                    rm.gapXS(isHorizontal: true),
                    Text.rich(TextSpan(
                        text: "Event name: ",
                        style: TextStyle(
                            color: Colors.white, fontSize: rm.subtitle),
                        children: [TextSpan(text: "January 30, 2025")]))
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.title,
                      color: Colors.white,
                    ),
                    rm.gapXS(isHorizontal: true),
                    Text.rich(TextSpan(
                        text: "Days Left: ",
                        style: TextStyle(
                            color: Colors.white, fontSize: rm.subtitle),
                        children: [TextSpan(text: "30")]))
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
                    Row(
                      spacing: rm.shortestSide * 0.023,
                      children: [
                        SizedBox(
                          height: rm.shortestSide * 0.08,
                          width: rm.shortestSide * 0.23,
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
                                    fontSize: rm.shortestSide * 0.025,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              )),
                        ),
                        SizedBox(
                          height: rm.shortestSide * 0.08,
                          width: rm.shortestSide * 0.08,
                          child: IconButton.outlined(
                            style: OutlinedButton.styleFrom(
                                elevation: 5,
                                side: BorderSide(
                                    color: Color.fromARGB(255, 218, 87, 5)),
                                padding: EdgeInsets.all(0),
                                backgroundColor: Colors.white),
                            onPressed: () {},
                            icon: Icon(Icons.download),
                            iconSize: rm.h5,
                            color: Color.fromARGB(255, 218, 87, 5),
                          ),
                        ),
                        SizedBox(
                          height: rm.shortestSide * 0.08,
                          width: rm.shortestSide * 0.23,
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
                                    fontSize: rm.shortestSide * 0.025,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                        SizedBox(
                          height: rm.shortestSide * 0.08,
                          width: rm.shortestSide * 0.08,
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
                            iconSize: rm.h5,
                            color: Color.fromARGB(255, 218, 87, 5),
                          ),
                        )
                      ],
                    )
                  ],
                ),

                rm.gapL(),
                SizedBox(
                  height: rm.shortestSide * 0.15,
                  width: rm.shortestSide * 0.15,
                  child: IconButton.outlined(
                    style: OutlinedButton.styleFrom(
                        elevation: 5,
                        side:
                            BorderSide(color: Color.fromARGB(255, 218, 87, 5)),
                        padding: EdgeInsets.all(0),
                        backgroundColor: Colors.white),
                    onPressed: () {},
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
      ),
    );
  }
}
