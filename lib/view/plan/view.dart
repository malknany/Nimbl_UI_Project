import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimbl_project/componant/const/mycolor.dart';
import 'package:nimbl_project/view/plan/widget/widget_tow.dart';
import 'package:nimbl_project/view/plan/widget/widgetone.dart';

import 'controller.dart';

class PlanScreen extends StatefulWidget {
  const PlanScreen({Key? key}) : super(key: key);

  @override
  State<PlanScreen> createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  bool isSelect = false;
  final controller = PlanController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: MyColor.myPurple,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10.h,
              ),
              const Text(
                'Your Plan',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 30.0, bottom: 20),
                      child: Text(
                        'Selected Cleaning',
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ),
                    ),
                    const WidgetOne(),
                    const Padding(
                      padding: EdgeInsets.only(top: 15.0, bottom: 20),
                      child: Text(
                        'Selected Frequency',
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ),
                    ),
                    DefaultTabController(
                        length: 3,
                        child: Column(
                          children: [
                            ButtonsTabBar(
                              backgroundColor: MyColor.myPink,
                              unselectedBackgroundColor: Colors.white,
                              borderWidth: 1,
                              labelStyle: const TextStyle(
                                color: Colors.white,
                              ),
                              unselectedLabelStyle: const TextStyle(
                                color: Color(0xffD9D9D9),
                              ),
                              unselectedBorderColor: const Color(0xffD9D9D9),
                              radius: 20,
                              borderColor: const Color(0xffD9D9D9),
                              height: 80,
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 20),
                              tabs: const [
                                Tab(
                                  text: 'Weekly',
                                ),
                                Tab(
                                  text: 'Bi-weekly',
                                ),
                                Tab(
                                  text: 'Monthly',
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 269.7,
                              child: TabBarView(
                                children: [
                                  const Center(
                                    child: Text('Weekly'),
                                  ),
                                  const Center(
                                    child: Text('Bi-weekly'),
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.only(
                                            top: 20.0, bottom: 20),
                                        width: double.infinity,
                                        child: const Text(
                                          'Selected Extras',
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Wrap(
                                        spacing: 45,
                                        runSpacing: 10,
                                        children: List.generate(
                                            controller.plans.length,
                                            (index) => WidgetTow(
                                                controller: controller,
                                                index: index)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
