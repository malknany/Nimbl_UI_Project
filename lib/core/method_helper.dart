import 'package:flutter/cupertino.dart';

final navigateKey = GlobalKey<NavigatorState>();

void navigateTo({required Widget page, bool withHistory = true}) {
  Navigator.pushAndRemoveUntil(
      navigateKey.currentContext!,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => page,
      ),
      (route) => withHistory);
}
