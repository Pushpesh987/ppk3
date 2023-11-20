import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'homepage/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool loginToPBX = false;
  bool loginToWebphone = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Your company logo in SVG format
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/purpleLogo.svg',
                      width: 60,
                      height: 80,
                    ),
                    const SizedBox(height: 60.0),
                    const Text(
                      'Welcome to Agent Phone!',
                      style: TextStyle(
                        fontSize: 23.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 50.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start, // Align to the start (left)
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 10.0), // Adjust the left padding as needed
                          child: Text(
                            'LogIn',
                            style: TextStyle(
                              fontSize: 23.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30.0), // Add some space between the text and the next widget
              _buildEditableBox(
                'Lan ID',
                'Enter your LAN ID',
                controller: usernameController,
              ),
              const SizedBox(height: 16.0),
              _buildEditableBox(
                'Station ID',
                'Enter your Station ID',
                obscureText: true,
                controller: passwordController,
              ),
              const SizedBox(height: 16.0), // Add some space between password and the switches
              Row(
                children: [
                  Switch(
                    value: loginToPBX,
                    onChanged: (value) {
                      setState(() {
                        loginToPBX = value;
                      });
                    },
                  ),
                  const Text('Login to PBX?'),
                ],
              ),
              Row(
                children: [
                  Switch(
                    value: loginToWebphone,
                    onChanged: (value) {
                      setState(() {
                        loginToWebphone = value;
                      });
                    },
                  ),
                  const Text('Login to Webphone?'),
                ],
              ),
              const SizedBox(height: 30.0),
              SizedBox(
                width: 342.0,
                height: 62.0,
                child: ElevatedButton(
                  onPressed: () => navigateToHomePage(context),
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold,), // Adjust the font size as needed
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEditableBox(String label, String hintText,
      {bool obscureText = false, TextEditingController? controller}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.grey),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: TextFormField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            labelText: label,
            hintText: hintText,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  void navigateToHomePage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }
}
