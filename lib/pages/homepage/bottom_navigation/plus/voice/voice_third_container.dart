// voice_third_container.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VoiceThirdContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 645.0,
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
                      'Customer Details',
                      style: TextStyle(
                        color: Color(0xFF331640),
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    const SizedBox(width: 94.0),
                    SvgPicture.asset(
                      'assets/minimize.svg',
                      height: 25.0,
                      width: 25.0,
                      color: const Color(0xFF331640),
                    ),
                    const SizedBox(width: 17.0),
                    SvgPicture.asset(
                      'assets/maximize.svg',
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
          // First container with text and input boxes
          buildCustomerDetails(),
        ],
      ),
    );
  }

  Widget buildCustomerDetails() {
  List<String> labelTexts = ['Name', 'Address', 'Phone', 'Email', 'DOB', 'Gender'];

  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            for (int i = 0; i < labelTexts.length; i++) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '${labelTexts[i]}:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Expanded(
                    child: TextFormField(
                      // Add your text input properties here
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        // Add additional decoration properties as needed
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
            ],
            // Add the "Update" button below the "Gender" input box on the right side
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle the update button press
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue, // Change the button color as needed
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Text(
                    'Update',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      SizedBox(height: 16.0),
    ],
  );
}


}
