// mail_button_dialog.dart
import 'package:flutter/material.dart';
import 'mail_page.dart';

class MailButtonDialog extends StatefulWidget {
  final Function(String) onEmailSelected;

  const MailButtonDialog({Key? key, required this.onEmailSelected}) : super(key: key);

  @override
  _MailButtonDialogState createState() => _MailButtonDialogState();
}

class _MailButtonDialogState extends State<MailButtonDialog> {
  String selectedMail = 'Select the mail';
  bool isSendButtonEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0xFFEDEDED),
        ),
        padding: const EdgeInsets.all(16.0),
        width: 300.0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // First rectangle box
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xFF411B52),
              ),
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.mail,
                        size: 30.0,
                        color: Colors.white,
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        'Send Email',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            // Second rectangle box
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xFFFBF1FF),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  DropdownButtonFormField<String>(
                    value: selectedMail,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedMail = newValue!;
                        isSendButtonEnabled = true; // Enable the button when mail is selected
                      });
                    },
                    items: <String>['Select the mail', 't1978280@gmail.com'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    decoration: InputDecoration(
                      labelText: 'Select the mail',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton.icon(
                    onPressed: isSendButtonEnabled
                        ? () {
                            // Handle send email button tap
                            widget.onEmailSelected(selectedMail);
                            sendEmail(context);
                          }
                        : null,
                    icon: const Icon(Icons.email),
                    label: const Text('Send Email'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void sendEmail(BuildContext context) {
    // Mock sending an email

    // Close the dialog and navigate to the homepage
    Navigator.pop(context);
    // Replace the below line with your navigation logic to the homepage
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MailPage(selectedMail: selectedMail)),
    );
  }
}
