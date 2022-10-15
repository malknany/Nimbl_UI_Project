import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../componant/const/mycolor.dart';
import '../controller.dart';

class WidgetTow extends StatefulWidget {
  WidgetTow({Key? key, required this.controller, required this.index})
      : super(key: key);
  PlanController controller;
  int index;

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
                  width: 30,
                  height: 40,
                ),
              ),
              widget.controller.plans[widget.index].notif.isEmpty
                  ? const SizedBox.shrink()
                  : Align(
                      alignment: Alignment.topRight,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: MyColor.myPink,
                        child: Text(
                          widget.controller.plans[widget.index].notif,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 10),
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
          style: const TextStyle(fontSize: 13, color: Colors.black),
        ),
      ],
    );
  }
}
