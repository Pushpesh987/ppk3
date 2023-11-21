//  pages/homepage/homepage_FirstContainer.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomepageFirstContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0.0),
      child: Container(
        // Remove the fixed height
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: const Color(0xFFFBF1FF),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Row( // Wrap the Column with Row
          children: [
            Expanded( // Wrap the Column with Expanded
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3B3E2),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const SizedBox(width: 15.0),
                        const Text(
                          'Interaction Details',
                          style: TextStyle(
                            color: Color(0xFF331640),
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        const SizedBox(width: 80.0),
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
                  const SizedBox(height: 16.0),
                  Container(
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF411B52).withOpacity(0.4),
                          spreadRadius: 0.0,
                          blurRadius: 5.0,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 8.0),
                            Text(
                              'Channel',
                              style: TextStyle(
                                color: Color(0xFF331640),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // Add your widgets or content here for Channel
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(height: 8.0),
                            Text(
                              'Directions',
                              style: TextStyle(
                                color: Color(0xFF331640),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // Add your widgets or content here for Directions
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(height: 8.0),
                            Text(
                              'User',
                              style: TextStyle(
                                color: Color(0xFF331640),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // Add your widgets or content here for User
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(height: 8.0),
                            Text(
                              'Created on',
                              style: TextStyle(
                                color: Color(0xFF331640),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // Add your widgets or content here for Created on
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 6),
                  Container(
                    height: 250.0,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15.0),
                        bottomRight: Radius.circular(15.0),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: List.generate(
                          20,
                          (index) => Container(
                            height: 60.0,
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFF2EDF4),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(
                                    Icons.call,
                                    color: Color(0xFF6F1377),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'OUT',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_upward,
                                        color: Colors.red,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '7986..',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '21/11/23',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}