import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Cpr extends StatefulWidget {
  const Cpr({Key? key}) : super(key: key);

  @override
  State<Cpr> createState() => _CprState();
}

class _CprState extends State<Cpr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF8F8),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffFFF8F8),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Image.asset('assets/images/icons8-left-96 1.png')),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 50,
          ),
          Container(
            alignment: Alignment.center,
            child: Image.asset('assets/images/cpr.gif'),
          ),
          Padding(padding: EdgeInsets.only(top: 50)),
          TextButton(
              onPressed: () {},
              child: Text(
                'Start',
                style: GoogleFonts.fanwoodText(
                    color: Color.fromARGB(255, 52, 73, 94), fontSize: 30),
              ))
        ],
      ),
    );
  }
}
