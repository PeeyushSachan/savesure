import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Title(color: Colors.black, child: Text("AppBar"))],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
