import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimbl_project/componant/const/mycolor.dart';
import 'package:nimbl_project/core/method_helper.dart';

import '../plan/view.dart';

class GetStartScreen extends StatefulWidget {
  const GetStartScreen({Key? key}) : super(key: key);

  @override
  State<GetStartScreen> createState() => _GetStartScreenState();
}

class _GetStartScreenState extends State<GetStartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.myPurple,
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/image/logo.png'),
                SizedBox(
                  height: 50.5.h,
                ),
                const Text('Clean Home \n Clean Life.',
                    style: TextStyle(
                        fontSize: 61,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center),
                SizedBox(
                  height: 40.h,
                ),
                const Text('Book Cleaners at the Comfort \n of you home.',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    textAlign: TextAlign.center),
                Image.asset(
                  'assets/image/photogetstart.png',
                  height: 300,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
      floatingActionButton: SizedBox(
          width: 308.w,
          height: 119.h,
          child: FloatingActionButton.extended(
            clipBehavior: Clip.antiAlias,
            backgroundColor: Colors.white,
            onPressed: () {
              navigateTo(page: const PlanScreen());
            },
            label: Text(
              'Get Started',
              style: TextStyle(
                color: MyColor.myPurple,
                fontSize: 25,
              ),
            ),
            shape: const OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
          )),
    );
  }
}
