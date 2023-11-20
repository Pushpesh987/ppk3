// pages/splash_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'login_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Add a delay of 100 milliseconds using Future.delayed
    Future.delayed(const Duration(milliseconds: 5000), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    });

    return Container(
      color: const Color(0xFF692783), // Background color #692783
      child: Center(
        child: Hero(
          tag: 'companyLogoTag', // Unique tag for the Hero animation
          child: Material(
            color: const Color(0xFF692783), // Background color #692783
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(16.0),
                // decoration: BoxDecoration(
                //   shape: BoxShape.circle,
                //   color: Colors.white,
                // ),
                child: SvgPicture.asset(
                  'assets/whiteLogo.svg', // Replace with your SVG file path
                  width: 100, // Adjust the width as needed
                  height: 100, // Adjust the height as needed
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
