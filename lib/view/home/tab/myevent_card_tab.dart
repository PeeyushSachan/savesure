import 'package:flutter/material.dart';

class MyeventCardTab extends StatelessWidget {
  const MyeventCardTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.event_note,
                size: 80,
                color: Colors.indigoAccent,
              ),
              const SizedBox(height: 30),
              const Text(
                "Events Coming Soon!",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 14),
              Text(
                "We're preparing an exciting list of your events.\nHang tight!",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              const CircularProgressIndicator(
                strokeWidth: 4,
                color: Colors.indigoAccent,
              ),
              const SizedBox(height: 24),
              const Text(
                "Loading your events...",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.indigo,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
