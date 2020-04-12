import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Positioned(
                  child: Icon(
                    Icons.panorama_fish_eye,
                    size: 200,
                    color: Colors.blue,
                  ),
                ),
                Positioned(
                  right: 60,
                  top: 60,
                  child: Icon(
                    Icons.notifications_active,
                    size: 80,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            Text(
              "You don't have any notifications",
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
