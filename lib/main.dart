import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/dashboard_view.dart';

void main() {
  runApp(
    DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) {
          return const ResponsiveDashboard();
        }),
  );
}

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      home: DashBoradView(),
    );
  }
}
