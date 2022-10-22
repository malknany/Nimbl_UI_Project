import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../componant/const/mycolor.dart';
import '../controller.dart';

class WidgetTow extends StatefulWidget {
  const WidgetTow({Key? key, required this.controller, required this.index})
      : super(key: key);
  final PlanController controller;
  final int index;

  @override
  State<WidgetTow> createState() => _WidgetTowState();
}

class _WidgetTowState extends State<WidgetTow> {
  bool isSelect = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 120.w,
          height: 120.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: MyColor.myPurple,
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  widget.controller.plans[widget.index].icon,
                  fit: BoxFit.contain,
                  width: 30.w,
                  height: 40.h,
                ),
              ),
              widget.controller.plans[widget.index].notification.isEmpty
                  ? const SizedBox.shrink()
                  : Align(
                      alignment: Alignment.topRight,
                      child: CircleAvatar(
                        radius: 10.r,
                        backgroundColor: MyColor.myPink,
                        child: Text(
                          widget.controller.plans[widget.index].notification,
                          style:  TextStyle(
                              color: Colors.white, fontSize: 10.sp),
                        ),
                      )),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          widget.controller.plans[widget.index].text,
          style:  TextStyle(fontSize: 13.sp, color: Colors.black),
        ),
      ],
    );
  }
}
