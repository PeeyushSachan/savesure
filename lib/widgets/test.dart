import 'package:flutter/material.dart';
import 'package:savesure/view/home/tab/coupans_card_tab.dart';
import 'package:savesure/view/home/tab/myevent_card_tab.dart';
import 'package:savesure/view/home/tab/warrenty_card_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedNavigationIndex = 0;

  List<Widget> allBottomTab = [
    WarrentyCardTab(),
    MyeventCardTab(),
    CoupansCardTab()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Title(color: Colors.black, child: Text("AppBar"))],
      ),
      body: allBottomTab[selectedNavigationIndex],
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "Warrent",
            selectedIcon: Icon(
              Icons.home_outlined,
              color: Colors.blue,
            ),
          ),
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "Events",
            selectedIcon: Icon(
              Icons.home_outlined,
              color: Colors.blue,
            ),
          ),
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "Copnas",
            selectedIcon: Icon(
              Icons.home_outlined,
              color: Colors.blue,
            ),
          ),
        ],
        selectedIndex: selectedNavigationIndex,
        onDestinationSelected: (value) {
          selectedNavigationIndex = value;

          setState(() {});
        },
      ),
    );
  }
}


