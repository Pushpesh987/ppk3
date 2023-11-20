// bottom_navigation_bar.dart
import 'package:flutter/material.dart';
import 'plus/plus_button_bottom_sheet.dart';
import 'profile/profile_bottom_sheet.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const MyBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  void _showBottomSheet(BuildContext context, Widget sheet) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return sheet;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF411B52).withOpacity(0.25),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: BottomNavigationBar(
        elevation: 3.0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30.0),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add, size: 30.0),
            label: 'Plus',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.headset_mic, size: 30.0),
            label: 'Device Connection',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, size: 30.0),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: const Color(0xFF331640),
        unselectedItemColor: const Color(0xFF331640),
        onTap: (index) {
          if (index == 1) {
            _showBottomSheet(context, PlusButtonBottomSheet(parentContext: context));
          } else if (index == 3) {
            // Show the profile bottom sheet
            _showBottomSheet(context, ProfileBottomSheet(context));
          } else {
            onItemTapped(index);
          }
        },
      ),
    );
  }
}
