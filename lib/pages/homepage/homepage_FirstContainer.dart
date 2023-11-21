// homepage_FirstContainer.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// import 'homepage_third_container.dart';

// Import necessary packages and classes

class HomepageFirstContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0.0), // Add padding
      // main container
      child: Container(
        height: 380.0,
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
                // first container
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
                      const SizedBox(width: 84.0),
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
              ],
            ),
            const SizedBox(height: 16.0),
            Column(
              children: [
                // Second container - first child
                Container(
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                        255, 255, 255, 255), // Customize the color
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color:
                            Color(0xFF411B52).withOpacity(0.4), // Shadow color
                        spreadRadius: 0.0, // Spread radius
                        blurRadius: 5.0, // Blur radius
                        offset: Offset(0,
                            4), // Offset in the vertical direction (positive for bottom)
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 8.0), // Add some space
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
                          SizedBox(height: 8.0), // Add some space
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
                          SizedBox(height: 8.0), // Add some space
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
                          SizedBox(height: 8.0), // Add some space
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
                // Second container - second child
                Container(
                  height: 250.0,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                        255, 255, 255, 255), // Customize the color
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                    ),
                  ),
                  // Second container - third child
                  child: SingleChildScrollView(
                    child: Column(
                      children: List.generate(
                        20,
                        (index) => Container(
                          height: 60.0,
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFF2EDF4), // Customize the color
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            // Add your widgets or content here
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                // Call Icon
                                Icon(
                                  Icons.call,
                                  color:
                                      Color(0xFF6F1377), // Customize the color
                                ),
                                // OUT Text and Up Arrow Icon
                                Row(
                                  children: [
                                    Text(
                                      'OUT',
                                      style: TextStyle(
                                        color:
                                            Colors.black, // Customize the color
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_upward,
                                      color: Colors.red, // Customize the color
                                    ),
                                  ],
                                ),
                                // Phone Number
                                Text(
                                  '7986..',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                // Date
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
          ],
        ),
      ),
    );
  }
}
