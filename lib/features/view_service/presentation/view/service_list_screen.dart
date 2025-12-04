import 'package:flutter/material.dart';
import 'package:hospital_app/features/view_service/domain/entities/service.dart';

class ServiceListScreen extends StatelessWidget {
  final List<Service> services = [
    Service(id: 1, name: 'Timing Programs', isCompleted: false),
    Service(id: 2, name: 'Counting Operations', isCompleted: true),
  ];

  ServiceListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Level Box
            Container(
              padding:
              const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple.shade200, width: 2),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: const [
                  Text(
                    "LEVEL 4",
                    style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Speed of Algorithms",
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 50),

            // Two circular service icons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: services.map((service) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: _buildServiceIcon(service),
                );
              }).toList(),
            ),

            const SizedBox(height: 50),

            // Bottom white card with button
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding:
              const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 8,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Text(
                    "Counting Operations",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 60, vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      "Start",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildServiceIcon(Service service) {
    final bool active = service.isCompleted;

    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: active
                ? LinearGradient(
              colors: [Colors.purpleAccent, Colors.purple.shade400],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )
                : null,
            color: active ? null : Colors.grey.shade200,
            boxShadow: active
                ? [
              BoxShadow(
                color: Colors.purple.withOpacity(0.4),
                blurRadius: 12,
                offset: const Offset(0, 4),
              ),
            ]
                : [],
          ),
          child: Icon(
            active ? Icons.stop_circle_outlined : Icons.access_time,
            color: active ? Colors.white : Colors.grey,
            size: 42,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          service.name,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: active ? Colors.black : Colors.grey,
          ),
        ),
      ],
    );
  }
}
