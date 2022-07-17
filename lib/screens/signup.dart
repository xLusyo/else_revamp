import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffFFF8F8),
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 75,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              'Welcome to eLSe!',
              style: GoogleFonts.fanwoodText(
                  color: const Color.fromARGB(250, 52, 73, 94), fontSize: 30),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 30),
            margin: const EdgeInsets.only(right: 10, left: 10, top: 10),
            height: 490,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: const Color.fromARGB(250, 205, 95, 95),
                borderRadius: BorderRadius.circular(25)),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Create your Account now!',
                    style: GoogleFonts.fanwoodText(
                        fontSize: 20, color: Colors.white),
                  ),
                ),
                Container(
                  height: 50,
                  padding: const EdgeInsets.only(top: 10),
                  alignment: Alignment.topLeft,
                  child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(5),
                        fillColor: Colors.white,
                        filled: true,
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        hintText: 'Username',
                        hintStyle: GoogleFonts.fanwoodText()),
                  ),
                ),
                Container(
                  height: 50,
                  padding: const EdgeInsets.only(top: 10),
                  alignment: Alignment.topLeft,
                  child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(5),
                        fillColor: Colors.white,
                        filled: true,
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        hintText: 'Name',
                        hintStyle: GoogleFonts.fanwoodText()),
                  ),
                ),
                Container(
                  height: 50,
                  padding: const EdgeInsets.only(top: 10),
                  alignment: Alignment.topLeft,
                  child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(5),
                        fillColor: Colors.white,
                        filled: true,
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        hintText: 'Address',
                        hintStyle: GoogleFonts.fanwoodText()),
                  ),
                ),
                Container(
                  height: 50,
                  padding: const EdgeInsets.only(top: 10),
                  alignment: Alignment.topLeft,
                  child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(5),
                        fillColor: Colors.white,
                        filled: true,
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        hintText: 'Email Address',
                        hintStyle: GoogleFonts.fanwoodText()),
                  ),
                ),
                Container(
                  height: 50,
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(5),
                              fillColor: Colors.white,
                              filled: true,
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              hintText: 'Date of Birth',
                              hintStyle: GoogleFonts.fanwoodText()),
                          onTap: () async {
                            DateTime? date = DateTime(1900);
                            FocusScope.of(context)
                                .requestFocus(new FocusNode());
                            date = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1990),
                                lastDate: DateTime(2030));
                          },
                        ),
                      ),
                      const Padding(
                          padding: EdgeInsets.only(left: 15, right: 5)),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(5),
                              fillColor: Colors.white,
                              filled: true,
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              hintText: 'Phone Number',
                              hintStyle: GoogleFonts.fanwoodText()),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(5),
                              fillColor: Colors.white,
                              filled: true,
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              hintText: 'Password',
                              hintStyle: GoogleFonts.fanwoodText()),
                        ),
                      ),
                      const Padding(
                          padding: EdgeInsets.only(left: 5, right: 5)),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(5),
                              fillColor: Colors.white,
                              filled: true,
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              hintText: 'Retype Password',
                              hintStyle: GoogleFonts.fanwoodText()),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 50),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(250, 52, 73, 94),
                      minimumSize: Size(350, 50),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                    child: Text(
                      'Create Account',
                      style: GoogleFonts.fanwoodText(
                          color: Colors.white, fontSize: 30),
                    ),
                    onPressed: () {
                      Get.offAndToNamed('/login');
                    },
                  ),
                )
              ],
            ),
          ),
          Container(
            child: TextButton(
                onPressed: () {},
                child: Container(
                  padding: const EdgeInsets.only(top: 5),
                  alignment: Alignment.center,
                  child: TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text(
                        "Already have an account? Login",
                        style: GoogleFonts.fanwoodText(
                            color: const Color.fromARGB(250, 52, 73, 94),
                            fontSize: 15),
                      )),
                )),
          )
        ],
      ),
    );
  }
}
