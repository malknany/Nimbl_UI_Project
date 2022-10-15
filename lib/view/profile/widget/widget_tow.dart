import 'package:flutter/material.dart';

import '../../../componant/const/mycolor.dart';

class WidgetTowProfile extends StatelessWidget {
  const WidgetTowProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            title: Text('Facebook',
                style: TextStyle(
                  color: MyColor.myBlack,
                )),
            leading: const Icon(
              Icons.facebook,
              color: Colors.blueAccent,
            ),
          ),
          Divider(
            color: MyColor.myColorDivider,
            thickness: 2,
            height: 2,
          ),
          ListTile(
            title: Text('Twitter',
                style: TextStyle(
                  color: MyColor.myBlack,
                )),
            leading: Image.asset('assets/image/twitter.png'),
          ),
          Divider(
            color: MyColor.myColorDivider,
            thickness: 2,
            height: 2,
          ),
          ListTile(
            title: Text('Gmail',
                style: TextStyle(
                  color: MyColor.myBlack,
                )),
            leading: Image.asset('assets/image/gmail.png'),
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
