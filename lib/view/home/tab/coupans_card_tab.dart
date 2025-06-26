import 'package:flutter/material.dart';

class CoupansCardTab extends StatelessWidget {
  const CoupansCardTab({Key? key}) : super(key: key);

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
              Icon(
                Icons.card_giftcard,
                size: 80,
                color: Colors.deepPurpleAccent,
              ),
              const SizedBox(height: 30),
              const Text(
                "Coupons Coming Soon!",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                "We're working hard to bring you amazing offers.\nStay tuned!",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              const LinearProgressIndicator(
                minHeight: 6,
                color: Colors.deepPurpleAccent,
                backgroundColor: Color(0xFFEDE7F6),
              ),
              const SizedBox(height: 24),
              const Text(
                "Launching Soon...",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.deepPurple,
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
