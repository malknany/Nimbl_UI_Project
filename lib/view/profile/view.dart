import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:nimbl_project/componant/const/mycolor.dart';
import 'package:nimbl_project/view/profile/widget/widget_tow.dart';
import 'package:nimbl_project/view/profile/widget/widgetone.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.myPurple,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: MyColor.myPurple,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 35, bottom: 30),
                    child: CircleAvatar(
                      backgroundImage:
                          const AssetImage('assets/image/profile.png'),
                      radius: 45,
                      child: LoadingAnimationWidget.discreteCircle(
                          color: Colors.white,
                          size: 110,
                          secondRingColor: Colors.yellowAccent,
                          thirdRingColor: Colors.purple),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                clipBehavior: Clip.antiAlias,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  color: MyColor.myColorDivider,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                      child: Text(
                        'Account',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    WidgetOneProfile(),
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                      child: Text(
                        'Share',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    WidgetTowProfile(),
                    Spacer()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
