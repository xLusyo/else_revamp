import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Pulse extends StatefulWidget {
  const Pulse({Key? key}) : super(key: key);

  @override
  State<Pulse> createState() => _PulseState();
}

class _PulseState extends State<Pulse> {
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
          Center(
            child: Stack(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/images/icons8-heart-96 1.png',
                      ),
                      iconSize: 250,
                    )),
                Container(
                  padding: EdgeInsets.only(top: 100),
                  alignment: Alignment.center,
                  child: Text(
                    '96',
                    style: GoogleFonts.fanwoodText(
                        color: Color.fromARGB(255, 52, 73, 94), fontSize: 36),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 140),
                  alignment: Alignment.center,
                  child: Text('BPM',
                      style: GoogleFonts.fanwoodText(
                          color: Color.fromARGB(255, 52, 73, 94),
                          fontSize: 15)),
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: TextButton(
              child: Text(
                'Start',
                style: GoogleFonts.fanwoodText(
                    color: Color.fromARGB(255, 52, 73, 94), fontSize: 35),
              ),
              onPressed: () {},
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 50),
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/Group 1.png',
              scale: 0.5,
            ),
          )
        ],
      ),
    );
  }
}
