import 'package:else_revamp/screens/cpr.dart';
import 'package:else_revamp/screens/faq.dart';
import 'package:else_revamp/screens/guideline.dart';
import 'package:else_revamp/screens/home.dart';
import 'package:else_revamp/screens/how-it-works.dart';
import 'package:else_revamp/screens/login.dart';
import 'package:else_revamp/screens/profile.dart';
import 'package:else_revamp/screens/update.dart';
import 'package:else_revamp/screens/pulse.dart';
import 'package:else_revamp/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogIn(),
      getPages: [
        GetPage(name: '/', page: ()=> LogIn()),
        GetPage(name: '/signup', page: ()=> SignUp()),
        GetPage(name: '/home', page: ()=> Home()),
        GetPage(name: '/profile', page: ()=> Profile()),
        GetPage(name: '/update', page: ()=> Update()),
        GetPage(name: '/pulse', page: ()=> Pulse()),
        GetPage(name: '/cpr', page: ()=> Cpr()),
        GetPage(name: '/faq', page: ()=> FAQ()),
        GetPage(name: '/how-it-works', page: ()=> HowTo()),
        GetPage(name: '/guide', page: ()=> Guidelines()),
      ],
    );
  }
}
