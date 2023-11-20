// pages/homepage/bottom_navigation/profile/profile_bottom_sheet.dart
import 'package:flutter/material.dart';

class ProfileBottomSheet extends StatefulWidget {
  final BuildContext context;

  const ProfileBottomSheet(this.context, {super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProfileBottomSheetState createState() => _ProfileBottomSheetState();
}

class _ProfileBottomSheetState extends State<ProfileBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildProfileContainer(),
        _buildDivider(),
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: [
              _buildOption('1 - Paid Break', showTrailingIcon: true),
              _buildDivider(),
              _buildOption('2 - TM Feedback', showTrailingIcon: true),
              _buildDivider(),
              _buildOption('3 - Fulfillment', showTrailingIcon: true),
              _buildDivider(),
              _buildOption('4 - Meeting/Training', showTrailingIcon: true),
              _buildDivider(),
              _buildOption('5 - Computer Problem', showTrailingIcon: true),
              _buildDivider(),
              _buildOption('6 - TPIN2', showTrailingIcon: true),
              _buildDivider(),
              _buildOption('7 - Call Outbound', showTrailingIcon: true),
              _buildDivider(),
              _buildOption('8 - Logout', showLogoutIcon: true),
              _buildDivider(),
              _buildOption('9 - Available', showTrailingIcon: true),
              _buildDivider(),
              _buildOption('10 - Callback', showTrailingIcon: true),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildProfileContainer() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 80.0,
            height: 80.0,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: const Center(
              child: Icon(
                Icons.person,
                size: 40.0,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 16.0),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'John Doe',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  'Available',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.green,
                  ),
                ),
                SizedBox(height: 4.0),
                Row(
                  children: [
                    Icon(
                      Icons.access_time,
                      size: 16.0,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 4.0),
                    Text(
                      '00:30:00', // Replace with your timer value
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOption(String label,
      {bool showTrailingIcon = false, bool showLogoutIcon = false}) {
    return ListTile(
      title: Text(label),
      trailing: showTrailingIcon
          ? const Icon(
              Icons.remove_circle,
              color: Color.fromARGB(
                  255, 0, 0, 0), // Customize the color of the minus icon
            )
          : (showLogoutIcon
              ? const Icon(
                  Icons.logout,
                  color: Colors.black, // Customize the color of the logout icon
                )
              : null),
    );
  }

  Widget _buildDivider() {
    return const Divider(
      color: Colors.grey,
      thickness: 1.0,
    );
  }
}
