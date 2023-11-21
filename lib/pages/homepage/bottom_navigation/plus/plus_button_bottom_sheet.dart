// pages/homepage/bottom_navigation/plus/plus_button_bottom_sheet.dart
import 'package:flutter/material.dart';
import 'mail/mail_button_dialog.dart';
import 'sms/sms_dialog.dart';
import 'voice/voice_button_dialog.dart';

class PlusButtonBottomSheet extends StatelessWidget {
  final BuildContext parentContext;

  const PlusButtonBottomSheet({Key? key, required this.parentContext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildMenuItem('SMS', Icons.sms, _showSmsDialog),
        _buildDivider(),
        _buildMenuItem('Voice', Icons.mic, _showVoiceButtonDialog),
        _buildDivider(),
        _buildMenuItem('Mail', Icons.mail, _showMailButtonDialog),
      ],
    );
  }

  Widget _buildMenuItem(String text, IconData iconData, Function() onTap) {
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
      onTap: onTap,
    );
  }

  Widget _buildDivider() {
    return const Divider(
      thickness: 1.0,
      height: 0,
      color: Color(0xFF331640),
    );
  }

  void _showVoiceButtonDialog() {
    showDialog(
      context: parentContext,
      builder: (BuildContext context) {
        return const VoiceButtonDialog();
      },
    );
  }

  void _showMailButtonDialog() {
    showDialog(
      context: parentContext,
      builder: (BuildContext context) {
        return const MailButtonDialog();
      },
    );
  }

  void _showSmsDialog() {
    showDialog(
      context: parentContext,
      builder: (BuildContext context) {
        return const SmsDialog();
      },
    );
  }
}
