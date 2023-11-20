// voice_page.dart
import 'package:flutter/material.dart';

import '../../../app_bar.dart';

class VoicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Remove everything in the body
          ],
        ),
      ),
    );
  }
}
