import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SSCard extends StatelessWidget {
  const SSCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    children: [
                      Checkbox(value: true, onChanged: (contaxt) {}),
                      Column(
                        children: [
                          Container(
                            width: 220,
                            child: AutoSizeText(
                              "Warrenty: Table & Spoon",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                              maxLines: 2,
                              minFontSize: 1,
                            ),
                          ),
                          Container(
                            width: 220,
                            child: AutoSizeText(
                              "ExpireOn: 20/10/25",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                              maxLines: 2,
                              minFontSize: 1,
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.remove_red_eye,
                                    color: Colors.white,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.download,
                                    color: Colors.white,
                                  )),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    children: [
                      Text(
                        "Days Left",
                        style: TextStyle(color: Colors.red),
                      ),
                      Stack(
                        children: [
                          Center(
                            child: Icon(
                              FontAwesomeIcons.rotateLeft,
                              color: Colors.red,
                              size: 70,
                            ),
                          ),
                          Positioned(
                              top: 28,
                              left: 25,
                              child: Center(child: Text("30D"))),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
