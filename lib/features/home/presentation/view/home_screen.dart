import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_app/features/home/presentation/widgets/floating_action_button_create_appointment.dart';
import 'package:hospital_app/features/home/presentation/widgets/navigation_bar_home.dart';
import 'package:hospital_app/features/profile/presentation/widget/profile_view.dart';
import 'package:hospital_app/features/setting/presentation/widgets/settings.dart';

import '../widgets/head_home.dart';
import '../widgets/home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = const [
      Home(),
      ProfileView(),
      Settings(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Theme.of(context).secondaryHeaderColor,
                Theme.of(context).primaryColor,
              ],
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              transform: const GradientRotation(-0.20),
            ),
          ),
          child: Column(
            children: [
              const HeadHome(),
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.background,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24.r),
                            topRight: Radius.circular(24.r),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: const Offset(0, 1),
                            )
                          ]),
                      child: _pages[_selectedIndex],
                    ),

                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Row(
                        children: [
                          Expanded(
                            child: NavigationBarHome(
                              selectedIndex: _selectedIndex,
                              onItemSelected: (index) {
                                setState(() {
                                  _selectedIndex = index;
                                });
                              },
                            ),
                          ),
                          const FloatingActionButtonCreateAppointment(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
