// pages/homepage/bottom_navigation/plus/voice/voice_third_container.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VoiceThirdContainer extends StatefulWidget {
  @override
  _VoiceThirdContainerState createState() => _VoiceThirdContainerState();
}

class _VoiceThirdContainerState extends State<VoiceThirdContainer> {
  bool isEditing = false;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              Expanded(
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
                        'Customer Details',
                        style: TextStyle(
                          color: Color(0xFF331640),
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      const SizedBox(width: 94.0),
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
                        enabled: isEditing, // Enable/disable editing based on the edit mode
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (!isEditing)
                    ElevatedButton(
                      onPressed: () {
                        // Switch to edit mode
                        setState(() {
                          isEditing = true;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: Text(
                        'Edit',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  if (isEditing)
                    ElevatedButton(
                      onPressed: () {
                        // Handle the update button press
                        setState(() {
                          isEditing = false; // Switch back to view mode
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
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
                  if (isEditing)
                    TextButton(
                      onPressed: () {
                        // Handle the cancel button press
                        setState(() {
                          isEditing = false; // Switch back to view mode
                        });
                      },
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                          color: Colors.red,
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
