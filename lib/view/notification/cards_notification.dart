import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// ✅ Notification दिखाने वाला Function

// Notifications plugin की global instance
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

// ✅ Notification Initialization Function
Future<void> initializeNotifications() async {
  // Android के लिए settings: यहाँ आपका app icon यूज़ होता है
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');

  // सभी प्लेटफॉर्म के लिए initialization settings
  const InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
  );

  // Plugin initialize करना
  await flutterLocalNotificationsPlugin.initialize(
    initializationSettings,

    // जब user notification पर click करे, तब क्या हो
    onDidReceiveNotificationResponse: (NotificationResponse response) {
      final payload = response.payload;
      if (payload != null) {
        print('Notification payload: $payload');
        // यहाँ आप navigation या कोई action कर सकते हो
      }
    },
  );
}

Future<void> requestNotificationPermissionIfNeeded() async {
  final bool? granted = await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.requestNotificationsPermission(); // ✅ THIS is what you need

  if (granted != null && granted) {
    print("🔔 Notification permission granted by user");
  } else {
    print("🚫 Notification permission denied by user");
  }
}

void showLocalNotification() async {
  const AndroidNotificationDetails androidDetails = AndroidNotificationDetails(
    'channel_id_1', // channel id (must be unique)
    'Basic Notifications', // channel name
    channelDescription: 'This channel is for basic notifications',
    importance: Importance.max,
    priority: Priority.high,
    playSound: true, // 🔔 sound enable
    enableVibration: true, // 💥 vibration enable
    ticker: 'ticker', // optional but good
  );

  const NotificationDetails notificationDetails =
      NotificationDetails(android: androidDetails);

  await flutterLocalNotificationsPlugin.show(
    0, // notification ID
    '📢 SaveSure Notification', // title
    'Your notification is working correctly! ✅', // body text
    notificationDetails,
    payload: 'test_payload', // payload on tap
  );
}
