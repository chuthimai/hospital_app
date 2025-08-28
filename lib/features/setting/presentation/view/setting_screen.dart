import 'package:flutter/material.dart';

import '../widgets/settings.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('SettingScreen'),
        ),
        body: const Settings(),
      ),
    );
  }
}