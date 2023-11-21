// pages/homepage/bottom_navigation/plus/voice/third_row.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThirdRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // first container
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 5.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(0, 255, 255, 255),
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: Color(0xFFD9D9D9),
          width: 2.0,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildIconWithText('assets/right.svg', 'Outbound', Color(0xFF72308F)),
          buildIconWithText('assets/right.svg', '7986525131', Color(0xFF00509A)),
          buildIconWithText('assets/right.svg', 'Ringing', Color(0xFF00AEAE)),
          buildIconWithText('assets/right.svg', 'Disconnected', Color(0xFF00759A)),
        ],
      ),
    );
  }

  Widget buildIconWithText(String iconPath, String text, Color iconColor) {
    return Column(
      children: [
        SvgPicture.asset(
          iconPath,
          height: 30.0,
          width: 30.0,
          color: iconColor,
        ),
        SizedBox(height: 8.0),
        Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}

// fourth_row.dart
class FourthRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildCircularIcon(Icons.call, Colors.green),
        buildCircularIcon(Icons.message, Colors.blue),
        buildCircularIcon(Icons.mail, Colors.orange),
        buildRedButton(context, 'Close'), // Pass the context to the function
      ],
    );
  }

  Widget buildCircularIcon(IconData iconData, Color iconColor) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: iconColor,
      ),
      padding: EdgeInsets.all(12.0),
      child: Icon(
        iconData,
        size: 23.0,
        color: Colors.white,
      ),
    );
  }

  Widget buildRedButton(BuildContext context, String buttonText) {
    return ElevatedButton(
      onPressed: () {
        // Navigate to the homepage when the button is pressed
        Navigator.pop(context);
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
