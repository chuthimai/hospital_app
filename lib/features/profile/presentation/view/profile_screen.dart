import 'package:flutter/material.dart';

import '../widget/profile_view.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ProfileScreen'),
        ),
        body: const ProfileView(),
      ),
    );
  }
}
