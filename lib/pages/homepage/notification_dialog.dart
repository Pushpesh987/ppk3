// pages/homepage/notification_dialog.dart
import 'package:flutter/material.dart';

class NotificationDialog {
  static void show(BuildContext context) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Notifications'),
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
            ),
          ],
        ),
        content: const SizedBox(
          height: 120.0, // Adjust the height as needed
          child: Center(
            child: Text('No Notifications'),
          ),
        ),
      ),
    );
  }
}
