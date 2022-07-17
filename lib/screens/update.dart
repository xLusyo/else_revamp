import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Update extends StatefulWidget {
  const Update({Key? key}) : super(key: key);

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(250, 246, 236, 236),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(250, 205, 95, 95),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Image.asset('assets/images/icons8-left-96 1.png')),
      ),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 240,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(250, 205, 95, 95),
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(
                          MediaQuery.of(context).size.width, 100.0)),
                ),
              ),
              Center(
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 160),
                child: Center(
                  child: Text(
                    'Dane De Guzman',
                    style: GoogleFonts.fanwoodText(
                        color: const Color.fromARGB(250, 52, 73, 94),
                        fontSize: 30),
                  ),
                ),
              )
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 10)),
          Container(
            margin: const EdgeInsets.only(right: 10, left: 10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        hintText: 'Birthdate',
                        hintStyle: GoogleFonts.fanwoodText()),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(left: 10)),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        hintText: 'Age',
                        hintStyle: GoogleFonts.fanwoodText()),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10, left: 10, top: 10),
            child: TextFormField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                  hintText: 'Home Address',
                  hintStyle: GoogleFonts.fanwoodText()),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10, left: 10, top: 10),
            child: TextFormField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                  hintText: 'Email Address',
                  hintStyle: GoogleFonts.fanwoodText()),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10, left: 10, top: 10),
            child: TextFormField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                  hintText: 'Password',
                  hintStyle: GoogleFonts.fanwoodText()),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10, left: 10, top: 10),
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(250, 205, 95, 95),
                    minimumSize: Size(150, 40),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                  child: Text(
                    'Save',
                    style: GoogleFonts.fanwoodText(
                        color: Colors.white, fontSize: 25),
                  ),
                  onPressed: () {
                    Get.offNamedUntil('/home', (route) => true);
                  },
                ),
                const Padding(padding: EdgeInsets.only(left: 50)),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(250, 52, 73, 94),
                    minimumSize: Size(150, 40),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                  child: Text(
                    'Cancel',
                    style: GoogleFonts.fanwoodText(
                        color: Colors.white, fontSize: 25),
                  ),
                  onPressed: () {
                    Get.back();
                  },
                ),
              ],
            )),
          ),
        ],
      ),
    );
  }
}
