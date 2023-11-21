// pages/homepage/home_page.dart
// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'app_bar.dart';
import 'bottom_navigation/bottom_navigation_bar.dart';
import 'homepage_FirstContainer.dart';
import 'homepage_third_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomepageFirstContainer(),
            const SizedBox(height: 16.0),
            HomepageThirdContainer(), // Include the third container here
            const SizedBox(height: 20.0),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // Handle navigation or other actions based on the selected index
    });
  }
}
