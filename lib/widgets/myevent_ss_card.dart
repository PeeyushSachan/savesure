import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyeventSsCard extends StatefulWidget {
  // const MyeventSsCard({Key? key}) : super(key: key);
  bool? value = false;

  @override
  State<MyeventSsCard> createState() => _MyeventSsCardState();
}

class _MyeventSsCardState extends State<MyeventSsCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 70,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Card(
            child: Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Type of Event : Marriage Party",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 10),
                      Checkbox(
                          tristate: true,
                          value: true,
                          onChanged: (bool? newValue) {
                            setState(() {});
                          }),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Date of Event : 29/3/25",
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.remove_red_eye_rounded,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.download,
                          color: Colors.white,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
