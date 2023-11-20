// pages/homepage/app_bar.dart
import 'package:flutter/material.dart';
import 'notification_dialog.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF411B52).withOpacity(0.25),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        elevation: 3.0,
        child: AppBar(
          title: SvgPicture.asset(
            'assets/purpleLogo.svg',
            width: 120.0,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: IconButton(
                icon: const Icon(
                  Icons.notifications,
                  size: 30.0,
                  color: Color(0xFF331640),
                ),
                onPressed: () {
                  // Show the notification dialog
                  NotificationDialog.show(context);
                },
              ),
            ),
          ],
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80.0);
}
