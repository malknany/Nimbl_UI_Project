import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../componant/const/mycolor.dart';

class CardWidget extends StatelessWidget {
  CardWidget(
      {Key? key,
      required this.time,
      required this.name,
      required this.rangTime,
      required this.price,
      required this.img})
      : super(key: key);
  String time, name, price, rangTime, img;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          time,
          style: TextStyle(fontSize: 35.sp, color: Colors.black),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          width: 436.w,
          height: 290.h,
          decoration: BoxDecoration(
            color: MyColor.myLightPurple,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 19.sp, color: MyColor.myPurple),
                  ),
                  CircleAvatar(
                    foregroundImage: AssetImage(img),
                    radius: 25.r,
                  )
                ],
              ),
              Text(
                'Upkeep Cleaning',
                style: TextStyle(fontSize: 17.sp, color: Colors.black),
              ),
              SizedBox(
                height: 11.1.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.access_time_filled,
                      color: MyColor.myPurple, size: 15),
                  Text(
                    rangTime,
                    style: TextStyle(fontSize: 17.sp, color: MyColor.myPurple),
                  ),
                ],
              ),
              SizedBox(
                height: 23.1.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Client Rating',
                    style: TextStyle(fontSize: 17.sp, color: Colors.black),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        3,
                        (index) => const Icon(
                              Icons.star,
                              color: Colors.black,
                              size: 15,
                            )),
                  )
                ],
              ),
              SizedBox(
                height: 20.1.h,
              ),
              const Divider(
                color: Color(0xffC48B30),
                height: 1,
                thickness: 1,
              ),
              SizedBox(
                height: 23.1.h,
              ),
              Row(
                children: [
                  Icon(Icons.call_outlined, color: MyColor.myPurple, size: 15),
                  SizedBox(
                    width: 41.w,
                  ),
                  Icon(
                    Icons.mail_outline,
                    color: MyColor.myPurple,
                    size: 15,
                  ),
                  const Spacer(),
                  Text(
                    price,
                    style: TextStyle(
                        fontSize: 19.sp,
                        color: MyColor.myPurple,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
