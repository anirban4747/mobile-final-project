import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {

  static final notifications = FlutterLocalNotificationsPlugin();

  static Future init() async {

    const android = AndroidInitializationSettings('@mipmap/ic_launcher');

    const settings = InitializationSettings(android: android);

    await notifications.initialize(settings);
  }

  static Future showNotification() async {

    const android = AndroidNotificationDetails(
        'channel id',
        'channel name'
    );

    const details = NotificationDetails(android: android);

    await notifications.show(
        0,
        "Test Notification",
        "Notification works",
        details
    );
  }
}