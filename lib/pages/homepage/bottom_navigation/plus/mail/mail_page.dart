// pages/homepage/bottom_navigation/plus/mail/mail_page.dart
import 'package:flutter/material.dart';

class MailPage extends StatefulWidget {
  const MailPage({Key? key}) : super(key: key);

  @override
  _MailPageState createState() => _MailPageState();
}

class _MailPageState extends State<MailPage> {
  bool isCcBccVisible = false;
  TextEditingController toController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Compose',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          elevation: 8.0,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildInputField("From"),
              const Divider(),
              _buildToField(),
              if (isCcBccVisible) ...[
                const Divider(), // Divider between "To" and "Cc" when expanded
                _buildInputField("Cc"),
                const Divider(),
                _buildInputField("Bcc"),
              ],
              const Divider(), // Divider between "Bcc" and "Subject"
              _buildInputField("Subject"),
              const Divider(),
              SizedBox(
                height:
                    60.0, // Adjusted height to create space between "Compose Email" and the button
                child: _buildComposeEmailField(),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: _buildSendButton(),
    );
  }

  Widget _buildInputField(String label) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        border: InputBorder.none,
      ),
    );
  }

  Widget _buildToField() {
    return Row(
      children: [
        Expanded(
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              TextField(
                controller: toController,
                decoration: InputDecoration(
                  labelText: "To",
                  border: InputBorder.none,
                ),
              ),
              IconButton(
                icon: Icon(isCcBccVisible
                    ? Icons.arrow_drop_up
                    : Icons.arrow_drop_down),
                onPressed: () {
                  setState(() {
                    isCcBccVisible = !isCcBccVisible;
                  });
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildComposeEmailField() {
    return TextField(
      maxLines: 5,
      decoration: InputDecoration(
        labelText: 'Compose Email',
        border: InputBorder.none,
      ),
    );
  }

  Widget _buildSendButton() {
    return Positioned(
      bottom: 20.0, // Adjust the bottom value as needed
      right: 20.0, // Adjust the right value as needed
      child: ElevatedButton.icon(
        onPressed: () {
          // Handle send button tap
        },
        icon: Icon(Icons.send),
        label: Text('Send'),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 25.0),
        ),
      ),
    );
  }
}
