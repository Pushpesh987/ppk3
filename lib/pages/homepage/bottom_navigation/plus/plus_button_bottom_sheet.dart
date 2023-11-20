// plus_button_bottom_sheet.dart
import 'package:flutter/material.dart';
import 'mail/mail_button_dialog.dart';
import 'sms/sms_dialog.dart';
import 'voice/voice_button_dialog.dart';

class PlusButtonBottomSheet extends StatelessWidget {
  final BuildContext parentContext;

  const PlusButtonBottomSheet({super.key, required this.parentContext});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildMenuItem('SMS', Icons.sms, parentContext),
        _buildDivider(),
        _buildMenuItem('Voice', Icons.mic, parentContext),
        _buildDivider(),
        _buildMenuItem('Mail', Icons.mail, parentContext),
      ],
    );
  }

  Widget _buildMenuItem(String text, IconData iconData, BuildContext context) {
    return ListTile(
      title: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 24.0,
            ),
            const SizedBox(width: 8.0),
            Text(
              text,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        if (text == 'Voice') {
          _showVoiceButtonDialog(context);
        } else if (text == 'Mail') {
          _showMailButtonDialog(context);
        } else if (text == 'SMS') {
          _showSmsDialog(context);
        } else {
          Navigator.pop(context); // Close the bottom sheet
          // Handle other items or navigate to corresponding pages
        }
      },
    );
  }

  Widget _buildDivider() {
    return const Divider(
      thickness: 1.0,
      height: 0,
      color: Colors.grey,
    );
  }

  void _showVoiceButtonDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const VoiceButtonDialog();
      },
    );
  }

  void _showMailButtonDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const MailButtonDialog();
      },
    );
  }

  void _showSmsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const SmsDialog();
      },
    );
  }
}
