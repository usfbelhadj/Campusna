import 'package:campusna/pages/login.dart';
import 'package:flutter/material.dart';

import 'loginMobile.dart';
import 'loginTablette.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 1300) {
        return LoginPage();
      } else if (constraints.maxWidth > 680 && constraints.maxWidth < 1300) {
        return LoginPageT();
      } else {
        return LoginPageM();
      }
    });
  }
}
