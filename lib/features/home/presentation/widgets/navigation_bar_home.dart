import 'package:flutter/material.dart';
import 'package:hospital_app/share/widgets/custom_navigation_bar/custom_navigation_bar.dart';

class NavigationBarHome extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemSelected;

  const NavigationBarHome({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onItemSelected,
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.home_outlined),
          activeIcon: Icon(
            Icons.home,
            size: Theme.of(context).iconTheme.size! * 1.15,
          ),
          label: "Trang chủ",
          tooltip: 'Trang chủ',
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.medical_services_outlined),
          activeIcon: Icon(
            Icons.medical_services,
            size: Theme.of(context).iconTheme.size! * 1.15,
          ),
          label: "Dịch vụ",
          tooltip: 'Dịch vụ',
        ),
        BottomNavigationBarItem(
            icon: const Icon(Icons.folder_shared_outlined),
            activeIcon: Icon(
              Icons.folder_shared,
              size: Theme.of(context).iconTheme.size! * 1.15,
            ),
            label: "Hồ sơ sức khoẻ",
            tooltip: 'Hồ sơ sức khoẻ'),
        BottomNavigationBarItem(
          icon: const Icon(Icons.settings_outlined),
          activeIcon: Icon(
            Icons.settings,
            size: Theme.of(context).iconTheme.size! * 1.15,
          ),
          label: "Cài đặt",
          tooltip: 'Cài đặt',
        ),
      ],
    );
  }
}
