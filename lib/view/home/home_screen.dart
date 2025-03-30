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

  void _onTabTap(int index) {
    setState(() {
      selectedNavigationIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Title(color: Colors.black, child: Text("AppBar"))],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          spacing: 2,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 101,
              width: 296,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.orangeAccent.shade100, width: 1.5),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _NavItem(
                    icon: Icons.sync,
                    label: 'Warranty',
                    selected: selectedNavigationIndex == 0,
                    onTap: () => _onTabTap(0),
                  ),
                  _NavItem(
                    icon: Icons.event,
                    label: 'Events',
                    selected: selectedNavigationIndex == 1,
                    onTap: () => _onTabTap(1),
                  ),
                  _NavItem(
                    icon: Icons.card_giftcard,
                    label: 'Coupans',
                    selected: selectedNavigationIndex == 2,
                    onTap: () => _onTabTap(2),
                  ),
                ],
              ),
            ),
            Container(
              height: 74,
              width: 74,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(37)),
              child: Icon(
                Icons.add,
                size: 50,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
      body: allBottomTab[selectedNavigationIndex],
    );
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _NavItem({
    required this.icon,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final color = selected ? Colors.pink : Colors.black87;

    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
                color: color,
                fontWeight: selected ? FontWeight.bold : FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
