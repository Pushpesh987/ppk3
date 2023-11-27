import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'success_dialog.dart';

class MailPage extends StatefulWidget {
  final String selectedMail;

  const MailPage({Key? key, required this.selectedMail}) : super(key: key);

  @override
  _MailPageState createState() => _MailPageState();
}

class _MailPageState extends State<MailPage> {
  TextEditingController fromController = TextEditingController();
  TextEditingController toController = TextEditingController();
  TextEditingController ccController = TextEditingController();
  TextEditingController bccController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController composeEmailController = TextEditingController();

  bool isCcBccVisible = false;

  @override
  void initState() {
    super.initState();
    // Set the selected email in the "From" input box
    fromController.text = widget.selectedMail;
  }

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
              _buildInputField("From", fromController),
              const Divider(),
              _buildToInputField(),
              if (isCcBccVisible) ...[
                const Divider(),
                _buildInputField("Cc", ccController),
                const Divider(),
                _buildInputField("Bcc", bccController),
              ],
              const Divider(),
              _buildInputField("Subject", subjectController),
              const Divider(),
              SizedBox(
                height: 60.0,
                child: _buildComposeEmailField(),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: _buildSendButton(),
    );
  }

  Widget _buildInputField(String label, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        border: InputBorder.none,
      ),
    );
  }

  Widget _buildToInputField() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: toController,
            decoration: InputDecoration(
              labelText: "To",
              border: InputBorder.none,
            ),
          ),
        ),
        IconButton(
          icon: Icon(
            isCcBccVisible ? Icons.arrow_drop_up : Icons.arrow_drop_down,
          ),
          onPressed: () {
            setState(() {
              isCcBccVisible = !isCcBccVisible;
            });
          },
        ),
      ],
    );
  }

  Widget _buildComposeEmailField() {
    return ExpandingTextField(
      controller: composeEmailController,
      hintText: 'Compose Email',
    );
  }

  Widget _buildSendButton() {
    return Stack(
      children: [
        Positioned(
          bottom: 30.0,
          right: 20.0,
          child: ElevatedButton.icon(
            onPressed: () {
              _sendEmail();
            },
            icon: Icon(Icons.send),
            label: Text('Send'),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 30.0),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _sendEmail() async {
    String apiUrl = 'https://api.emailjs.com/api/v1.0/email/send';
    String serviceId = ' ';
    String templateId = ' ';
    String userId = ' ';

    final requestBody = {
      'service_id': serviceId,
      'template_id': templateId,
      'user_id': userId,
      'template_params': {
        'from': fromController.text,
        'to': toController.text,
        'cc': ccController.text,
        'bcc': bccController.text,
        'subject': subjectController.text,
        'compose_email': composeEmailController.text,
      },
    };

    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {'origin': 'http:localhost', 'Content-Type': 'application/json'},
      body: jsonEncode(requestBody),
    );

    if (response.statusCode == 200) {
      print('Email sent successfully');
      _showSuccessDialog(context);
    } else {
      print('Error: ${response.statusCode}');
    }
  }

  void _showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const SuccessDialog();
      },
    );
  }
}

class ExpandingTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;

  ExpandingTextField({required this.controller, required this.hintText});

  @override
  _ExpandingTextFieldState createState() => _ExpandingTextFieldState();
}

class _ExpandingTextFieldState extends State<ExpandingTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      maxLines: null, // Set maxLines to null for infinite expansion
      keyboardType: TextInputType.multiline,
      decoration: InputDecoration(
        hintText: widget.hintText,
        border: InputBorder.none,
      ),
    );
  }
}
