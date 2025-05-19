import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StyledNotificationPopup extends StatefulWidget {
  @override
  State<StyledNotificationPopup> createState() => _StyledNotificationPopupState();
}

class _StyledNotificationPopupState extends State<StyledNotificationPopup> {
  final GlobalKey _bellKey = GlobalKey();
  OverlayEntry? _overlayEntry;

  void _togglePopup() {
    if (_overlayEntry != null) {
      _overlayEntry?.remove();
      _overlayEntry = null;
    } else {
      _showPopup();
    }
  }

  void _showPopup() {
    final RenderBox renderBox = _bellKey.currentContext!.findRenderObject() as RenderBox;
    final Offset offset = renderBox.localToGlobal(Offset.zero);

    _overlayEntry = OverlayEntry(
      builder: (_) => Stack(
        children: [
          // Dismiss on tap outside
          Positioned.fill(
            child: GestureDetector(
              onTap: _togglePopup,
              child: Container(color: Colors.transparent),
            ),
          ),
          Positioned(
            top: offset.dy + renderBox.size.height + 8,
            right: 16,
            child: Material(
              elevation: 6,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: 360,
                height: 520,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color(0xFFF4A261)),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    // Header
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 16),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(117, 246, 215, 194),
                        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                      child: Row(
                        children: [
                          ElevatedButton(
                            onPressed: _togglePopup,
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(10),
                              backgroundColor: Colors.white,
                              elevation: 0,
                            ),
                            child: Icon(Icons.arrow_back_ios_new, size: 16, color: Colors.black),
                          ),
                          Spacer(),
                          Icon(FontAwesomeIcons.bell, color: Color(0xFFE76F51), size: 18),
                          SizedBox(width: 8),
                          Text(
                            "Notification",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Spacer(flex: 2),
                        ],
                      ),
                    ),
                    Container(
                      height: 36,
                      color: Color(0xFFFFF3E0),
                      alignment: Alignment.center,
                      child: Text(
                        "14 New Notifications",
                        style: TextStyle(color: Color(0xFFE76F51), fontWeight: FontWeight.w500),
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        padding: EdgeInsets.zero,
                        children: [


                          _buildNotificationItem(
                            title: "Upcoming Event: Tech Expo 2025!",
                            subtitle:
                                "You just made a transfer of \$45.00 to Trevor Philips on Nov 18, 2024 at 09:31 AM.",
                            type: "Event",
                            highlight: false,
                          ),

                          
                          _buildNotificationItem(
                            title: "New Warranty Activated!",
                            subtitle:
                                "You just made a transfer of \$45.00 to Trevor Philips on Nov 18, 2024 at 09:31 AM.",
                            type: "Warranty",
                            highlight: true,
                          ),
                          _buildNotificationItem(
                            title: "Upcoming Event: Tech Expo 2025!",
                            subtitle:
                                "You just made a transfer of \$45.00 to Trevor Philips on Nov 18, 2024 at 09:31 AM.",
                            type: "Event",
                          ),
                          _buildNotificationItem(
                            title: "Upcoming Event: Tech Expo 2025!",
                            subtitle:
                                "You just made a transfer of \$45.00 to Trevor Philips on Nov 18, 2024 at 09:31 AM.",
                            type: "Event",
                          ),
                          _buildNotificationItem(
                            title: "Upcoming Event: Tech Expo 2025!",
                            subtitle:
                                "You just made a transfer of \$45.00 to Trevor Philips on Nov 18, 2024 at 09:31 AM.",
                            type: "Event",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );

    Overlay.of(context).insert(_overlayEntry!);
  }

  Widget _buildNotificationItem({
    required String title,
    required String subtitle,
    required String type,
    bool highlight = false,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      color: highlight ? Color(0xFFFFE0B2) : Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black)),
                SizedBox(height: 4),
                Text(subtitle, style: TextStyle(fontSize: 13, color: Colors.black87)),
              ],
            ),
          ),
          Column(
            children: [
              Text(type, style: TextStyle(color: Colors.grey, fontSize: 12)),
              if (highlight)
                Icon(Icons.arrow_forward_ios, size: 12, color: Colors.black54)
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Styled Notification Panel"),
        actions: [
          IconButton(
            key: _bellKey,
            icon: Icon(Icons.notifications),
            onPressed: _togglePopup,
          ),
        ],
      ),
      body: Center(child: Text("Tap the bell icon to see notifications")),
    );
  }
}
