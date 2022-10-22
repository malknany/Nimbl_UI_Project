import 'package:flutter/material.dart';

import '../../../componant/const/mycolor.dart';

class WidgetOneProfile extends StatelessWidget {
  const WidgetOneProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            title: Text('notification',
                style: TextStyle(
                  color: MyColor.myBlack,
                )),
            leading: Icon(
              Icons.notifications,
              color: MyColor.myPurple,
            ),
          ),
          Divider(
            color: MyColor.myColorDivider,
            thickness: 2,
            height: 2,
          ),
          ListTile(
            title: Text('My Bookings',
                style: TextStyle(
                  color: MyColor.myBlack,
                )),
            leading: Icon(
              Icons.calendar_month,
              color: MyColor.myPurple,
            ),
          ),
          Divider(
            color: MyColor.myColorDivider,
            thickness: 2,
            height: 2,
          ),
          ListTile(
            title: Text('My Plan',
                style: TextStyle(
                  color: MyColor.myBlack,
                )),
            leading: Icon(
              Icons.check_circle,
              color: MyColor.myPurple,
            ),
          ),
          Divider(
            color: MyColor.myColorDivider,
            thickness: 2,
            height: 2,
          ),
          ListTile(
            title: Text('Addresses',
                style: TextStyle(
                  color: MyColor.myBlack,
                )),
            leading: Icon(
              Icons.map_sharp,
              color: MyColor.myPurple,
            ),
          ),
          Divider(
            color: MyColor.myColorDivider,
            thickness: 2,
            height: 2,
          ),
        ],
      ),
    );
  }
}
