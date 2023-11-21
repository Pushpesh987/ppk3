//  pages/homepage/homepage_third_container.dart

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomepageThirdContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0.0),
      child: Container(
        height: 440.0,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: const Color(0xFFFBF1FF),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded( // Wrap the container with Expanded
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3B3E2),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const SizedBox(width: 15.0),
                        const Text(
                          'All Interaction',
                          style: TextStyle(
                            color: Color(0xFF331640),
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        const SizedBox(width: 120.0),
                        SvgPicture.asset(
                          'assets/maximize.svg',
                          height: 25.0,
                          width: 25.0,
                          color: const Color(0xFF331640),
                        ),
                        const SizedBox(width: 17.0),
                        SvgPicture.asset(
                          'assets/minimize.svg',
                          height: 25.0,
                          width: 25.0,
                          color: const Color(0xFF331640),
                        ),
                        const SizedBox(width: 8.0),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Expanded( // Wrap the container with Expanded
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                // Add your content for the first container here
              ),
            ),
          ],
        ),
      ),
    );
  }
}
