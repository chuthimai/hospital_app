import 'package:flutter/material.dart';
import 'package:hospital_app/features/home/presentation/widgets/services.dart';

import 'head_home.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HeadHome(),
        Services(),
      ],
    );
  }
}