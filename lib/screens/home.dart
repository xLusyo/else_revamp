import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF8F8),
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 25,
          ),
          Container(
            margin: const EdgeInsets.only(left: 8, right: 8, bottom: 36),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: const Color.fromARGB(250, 205, 95, 95),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(left: 8),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'eLse',
                      style: GoogleFonts.fanwoodText(
                          fontSize: 25, color: Colors.white),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                        'assets/images/icons8-medical-doctor-48 1 (2).png'),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 16),
                    alignment: Alignment.center,
                    child: Text(
                      'Hello, Dane!',
                      style: GoogleFonts.fanwoodText(
                          fontSize: 25, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 36)),
          Container(
            width: 380,
            height: 60,
            child: ElevatedButton.icon(
                icon: Tab(
                    icon: Image.asset(
                        'assets/images/icons8-doctors-folder-48 1.png')),
                label: Text(
                  'Your Profile',
                  style: GoogleFonts.fanwoodText(
                      fontSize: 20, color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
                onPressed: () {
                  Get.toNamed('/profile');
                }),
          ),
          Container(
            margin: const EdgeInsets.only(top: 21),
            width: 380,
            height: 60,
            child: ElevatedButton.icon(
                icon: Tab(
                    icon: Image.asset(
                        'assets/images/icons8-heart-with-pulse-48 1.png')),
                label: Text(
                  'Heart Rate Monitor',
                  style: GoogleFonts.fanwoodText(
                      fontSize: 20, color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
                onPressed: () {
                  Get.toNamed('/pulse');
                }),
          ),
          Container(
            margin: const EdgeInsets.only(top: 21),
            width: 380,
            height: 60,
            child: ElevatedButton.icon(
                icon: Tab(
                    icon:
                        Image.asset('assets/images/icons8-lifebuoy-48 1.png')),
                label: Text(
                  'CPR',
                  style: GoogleFonts.fanwoodText(
                      fontSize: 20, color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
                onPressed: () {
                  Get.toNamed('/cpr');
                }),
          )
        ],
      ),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.white,
        style: TabStyle.fixedCircle,
        items: [
          TabItem(
              icon: Image.asset('assets/images/icons8-google-home-48 1.png')),
          TabItem(
              icon:
                  Image.asset('assets/images/icons8-important-book-48 1.png')),
          TabItem(icon: Image.asset('assets/images/icons8-hospital-48 1.png')),
          TabItem(icon: Image.asset('assets/images/icons8-inquiry-48 1.png')),
          TabItem(icon: Image.asset('assets/images/icons8-add-phone-48 1.png'))
        ],
        onTap: (int i) {
          switch (i) {
            case 1:
              {
                Get.toNamed('/how-it-works');
              }
              break;

            case 3:
              {
                Get.toNamed('/faq');
              }
              break;
          }
        }, //Array like
      ),
    );
  }
}
