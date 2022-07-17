import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffFFF8F8),
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 110,
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Image.asset(
              'assets/images/icons8-lifebuoy-96 1.png',
              width: 150,
              height: 150,
              scale: 0.1,
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 20),
            child: Text('Hello there!',
                style: GoogleFonts.fanwoodText(
                    fontSize: 30,
                    color: const Color.fromARGB(250, 52, 73, 94))),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(left: 20),
            child: Text('Welcome',
                style: GoogleFonts.fanwoodText(
                    fontSize: 25,
                    color: const Color.fromARGB(250, 52, 73, 94))),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 20, right: 36, top: 20),
            child: TextFormField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                  prefixIcon: const ImageIcon(
                    AssetImage(
                        'assets/images/icons8-security-user-female-48 1.png'),
                    color: Color.fromARGB(250, 52, 73, 94),
                  ),
                  hintText: 'Username',
                  hintStyle: GoogleFonts.fanwoodText()),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 20, right: 36, top: 10),
            child: TextFormField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                  prefixIcon: const ImageIcon(
                    AssetImage('assets/images/icons8-key-2-48 1.png'),
                    color: Color.fromARGB(250, 52, 73, 94),
                  ),
                  hintText: 'Password',
                  hintStyle: GoogleFonts.fanwoodText()),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(right: 36, top: 1, bottom: 10),
            alignment: Alignment.topRight,
            child: TextButton(
                onPressed: () {},
                child: Text('Forgot password?',
                    style: GoogleFonts.fanwoodText(
                        fontSize: 15,
                        color: const Color.fromARGB(250, 52, 73, 94)))),
          ),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(250, 243, 111, 111),
                minimumSize: Size(350, 50),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              child: Text(
                'Login',
                style:
                    GoogleFonts.fanwoodText(color: Colors.white, fontSize: 30),
              ),
              onPressed: () {
                Get.offAndToNamed('/home');
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            child: TextButton(
                onPressed: () {
                  Get.toNamed('/signup');
                },
                child: Text(
                  "Don't have an account? Create Account",
                  style: GoogleFonts.fanwoodText(
                      color: const Color.fromARGB(250, 52, 73, 94),
                      fontSize: 15),
                )),
          )
        ],
      ),
    );
  }
}
