import 'package:flutter/material.dart';
import 'package:savesure/view/home/tab/coupans_card_tab.dart';
import 'package:savesure/view/home/tab/myevent_card_tab.dart';
import 'package:savesure/view/home/tab/warrenty_card_tab.dart';
import 'package:savesure/view/notification/cards_notification.dart';
import 'package:responsive_media/responsive_media.dart';

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
      ResponsiveMedia.init(context); // Initialize here
      final rm = ResponsiveMedia.instance;
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        actions: [Title(color: Colors.black, child: Text("AppBar"))],
      ),
      bottomNavigationBar: Material(
        color: Colors.transparent,
        child: Padding(
          padding:rm.paddingHorizontal(0.01),
          child: rm.screenWidth<= 768 ?
          
          
          
          
          Row(
            spacing: rm.shortestSide*0.004,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: rm.shortestSide*0.26,
                width: rm.shortestSide*0.78,
                padding:
                 EdgeInsets.symmetric(vertical: rm.shortestSide*0.032, horizontal:rm.shortestSide*0.021 ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    /*border: Border.all(
                        //color: Colors.orangeAccent.shade100, width: 1.5
                      ),*/

                    border: Border(
                        top: BorderSide(
                            width:0.004.rs, color: Colors.orangeAccent.shade100),
                        left: BorderSide(
                            width:0.004.rs, color: Colors.orangeAccent.shade100),
                        right: BorderSide(
                            width:0.004.rs, color: Colors.orangeAccent.shade100)),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _NavItem(
                     
                     size: rm.shortestSide*0.064,
                      icon: Icons.sync,
                    
                      label: 'Warranty',
                      selected: selectedNavigationIndex == 0,
                      onTap: () => _onTabTap(0),
                    ),
                    _NavItem(
                       size: rm.shortestSide*0.064,
                      icon: Icons.event,
                      label: 'Events',
                      selected: selectedNavigationIndex == 1,
                      onTap: () => _onTabTap(1),
                    ),
                    _NavItem(
                       size: rm.shortestSide*0.064,
                      icon: Icons.card_giftcard,
                      label: 'Coupans',
                      selected: selectedNavigationIndex == 2,
                      onTap: () => _onTabTap(2),
                    ),
                  ],
                ),
              ),
              InkWell(
                child: Container(
                  height: 74,
                  width: 74,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(37)),
                  child: Icon(
                    Icons.add,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  showLocalNotification();
                },
              )
            ],
          ):

          Row(



            children: [
              Container(

                child: Text("Circiual"),
              )
            ],
          )
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
  final double size;

  const _NavItem({
    required this.size,
    required this.icon,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    ResponsiveMedia.init(context); // Initialize here
      final rm = ResponsiveMedia.instance;

    final color = selected ? Colors.pink : Colors.black87;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12), // Optional ripple radius
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: rm.shortestSide*0.021, vertical: rm.shortestSide*0.010),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: color , size: size,),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(

               fontSize:0.032.rs ,
                color: color,
                fontWeight: selected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
