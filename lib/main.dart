import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/activity/ui/activities_page.dart';

void main() {
  runApp(const BoringApp());
}

class BoringApp extends StatelessWidget {
  const BoringApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child) {
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Boring App',
          home: child,
        );

      },
      child: const ActivitiesPage(),
    );
  }
}
