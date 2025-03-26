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

              // Content on top
              Positioned.fill(
                child: Column(
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
                    Row(
                      children: [
                        Container(
                          width: 42,
                          height: 42,
                          child: Transform.scale(
                            scale: 2.33,
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
                                    color: const Color.fromARGB(
                                        255, 172, 170, 170)),
                                splashRadius: 5,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                }),
                          ),
                        )
                      ],
                    ),
                    Row(),
                    Row(),
                    Row(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
