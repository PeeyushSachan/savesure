import 'package:flutter/material.dart';
import 'package:savesure/view/home/home_screen.dart';
import 'package:savesure/widgets/ss_warranty_card.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

