import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:nimbl_project/view/calender/view.dart';
import 'package:nimbl_project/view/get_started/view.dart';
import 'package:nimbl_project/view/on_bording/view.dart';
import 'package:nimbl_project/view/plan/view.dart';
import 'package:nimbl_project/view/profile/view.dart';

import 'core/method_helper.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(670, 1450),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Nimbl',
        navigatorKey: navigateKey,
        home: child,
      ),
      child: PageView(
        children: const [
          GetStartScreen(),
          PlanScreen(),
          CalenderScreen(),
          ProfileScreen(),
          OnBoarding(),
        ],
      ),
    );
  }
}
