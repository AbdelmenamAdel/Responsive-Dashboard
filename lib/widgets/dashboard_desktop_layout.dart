import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: CustomDrawer(),
          ),
          Expanded(
            flex: 6,
            child: Container(),
          ),
          Expanded(
            flex: 3,
            child: Container(),
          ),
        ],
      ),
    );
  }
}
