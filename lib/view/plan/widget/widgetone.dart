import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../componant/const/mycolor.dart';

class WidgetOne extends StatefulWidget {
  const WidgetOne({Key? key}) : super(key: key);

  @override
  State<WidgetOne> createState() => _WidgetOneState();
}

class _WidgetOneState extends State<WidgetOne> {
  bool isFirst = true;

  bool isScaond = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  decoration: BoxDecoration(
                    color: MyColor.myLightPurple,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(
                    'assets/image/photo.png',
                    width: 200.w,
                    height: 200.h,
                  )),
              SizedBox(
                height: 28.8.h,
              ),
              const Text(
                'Initial Cleaning',
                style: TextStyle(fontSize: 13, color: Colors.black),
              ),
              Checkbox(
                side: const BorderSide(
                  width: 1,
                ),
                activeColor: MyColor.myPink,
                value: isFirst,
                onChanged: (bool? value) {
                  isFirst = value!;
                  setState(() {});
                },
                shape: const CircleBorder(),
              )
            ],
          ),
        ),
        SizedBox(
          width: 20.w,
        ),
        SizedBox(
          child: Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                    color: MyColor.myLightPurple,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(
                    'assets/image/photo2.png',
                    width: 200.w,
                    height: 200.h,
                  )),
              SizedBox(
                height: 28.8.h,
              ),
              const Text(
                'Upkeep Cleaning',
                style: TextStyle(fontSize: 13, color: Colors.black),
              ),
              Checkbox(
                side: const BorderSide(
                  width: 1,
                ),
                activeColor: MyColor.myPink,
                value: isScaond,
                onChanged: (bool? value) {
                  isScaond = value!;
                  setState(() {});
                },
                shape: const CircleBorder(),
              )
            ],
          ),
        ),
      ],
    );
  }
}
