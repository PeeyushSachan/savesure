import 'package:flutter/material.dart';
import 'package:savesure/widgets/ss_warranty_card.dart';

class WarrentyCardTab extends StatelessWidget {
  const WarrentyCardTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.5),
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return SsWarrantyCard();
          }),
    ));
  }
}
