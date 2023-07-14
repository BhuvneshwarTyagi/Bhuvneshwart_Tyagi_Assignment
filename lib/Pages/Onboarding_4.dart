
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Home_Screen.dart';

class Onboarding_4 extends StatefulWidget {
  const Onboarding_4({Key? key}) : super(key: key);

  @override
  State<Onboarding_4> createState() => _Onboarding_4State();
}

class _Onboarding_4State extends State<Onboarding_4> {
  final TextEditingController _full_name=TextEditingController();
  final TextEditingController _email=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(255,255,255, 1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: (){Navigator.pop(context);},
            icon: const Icon(Icons.arrow_back_ios,color: Colors.black,size: 25,)
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.04,
                ),
                  Text("Just a step away !",
                      style: GoogleFonts.lexend(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.03,
                ),
                TextFormField(
                  style: GoogleFonts.lexend(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 18
                  ),
                  autocorrect: false,
                  keyboardType: TextInputType.name,
                  controller: _full_name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: const BorderSide(
                            color: Colors.black12,
                            width: 2
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: const BorderSide(
                            color: Colors.black12,
                            width: 2
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: const BorderSide(
                            color: Colors.black12,
                            width: 2
                        )),
                    label: const Text("Full name*"),
                    labelStyle: GoogleFonts.lexend(
                        color: const Color.fromRGBO(170,170, 170,1)),
                    filled: true,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    fillColor: const Color.fromRGBO(255,255,255, 1),
                  )
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.02,
                ),
                TextFormField(
                  cursorColor: const Color.fromRGBO(99, 24, 175, 1),
                  style: GoogleFonts.lexend(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 18
                  ),
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  controller: _email,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: const BorderSide(
                            color: Colors.black12,
                            width: 2
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: const BorderSide(
                            color: Colors.black12,
                            width: 2
                        )),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: const BorderSide(
                            color: Colors.black12,
                            width: 2
                        )),
                    label: const Text("Email ID*"),
                    labelStyle: GoogleFonts.lexend(
                        color: const Color.fromRGBO(170,170, 170,1)),
                    filled: true,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    fillColor: const Color.fromRGBO(255,255,255, 1),
                  ),

                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.47,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.07,

                  decoration:   BoxDecoration(
                    color: const Color.fromRGBO(99, 24, 175,1),
                    borderRadius: BorderRadius.circular(8),
                  ),

                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color.fromRGBO(99, 24, 175,1),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => home_screen(),));
                    },

                    child: Text("Let's Start",style: GoogleFonts.lexend(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                    )),
                  ),),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
