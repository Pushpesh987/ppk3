// mail_page.dart
import 'package:flutter/material.dart';

import '../../../app_bar.dart';

class MailPage extends StatelessWidget {
  const MailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: Text('This is the Mail Page!'),
      ),
    );
  }
}
