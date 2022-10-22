import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimbl_project/componant/const/mycolor.dart';

import 'calender_widget.dart';
import 'card_widget.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({Key? key}) : super(key: key);

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.myPurple,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                  Text(
                    'Cleaner Calender',
                    style: TextStyle(color: Colors.white, fontSize: 29.sp),
                  ),
                  CalenderWidget(),
                ],
              ),
              Expanded(
                child: Container(
                  decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.r),
                        topLeft: Radius.circular(20.r)),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 50.h),
                      CardWidget(
                        price: '\$50',
                        name: 'Michael Hamilton',
                        rangTime: '10AM - 11AM',
                        time: '10 Am',
                        img: 'assets/image/myphoto.jpg',
                      ),
                      SizedBox(
                        height: 23.h,
                      ),
                      CardWidget(
                        price: '\$150',
                        name: 'Alexandra johnson',
                        rangTime: '12PM - 1PM',
                        time: '12 PM',
                        img: 'assets/image/profile2.png',
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
