import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import 'Onboarding_11.dart';

class Onboarding_15 extends StatefulWidget {
  const Onboarding_15({Key? key}) : super(key: key);
  static String verify="";

  @override
  State<Onboarding_15> createState() => _Onboarding_15State();
}

class _Onboarding_15State extends State<Onboarding_15> {
  final TextEditingController _phone=TextEditingController();
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                    height: MediaQuery.of(context).size.height*0.4,
                     width: MediaQuery.of(context).size.width,
                     decoration: const BoxDecoration(
                       image: DecorationImage(
                         image: AssetImage("assets/images/bg_11.png"),
                         fit: BoxFit.fill
                       )
                     ),
                  ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text("Login or Signup",
                style:GoogleFonts.lexend(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: const Color. fromRGBO(120, 120, 120, 1)
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.02,
            ),
            Form(
              key: _key,
              child: Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: TextFormField(
                  style: GoogleFonts.lexend(
                    color: const Color.fromRGBO(1, 1, 1,1),
                    fontWeight: FontWeight.w400,
                    fontSize: 18
                  ),
                  autocorrect: false,
                  keyboardType: TextInputType.phone,
                  controller: _phone,
                  // autovalidateMode: AutovalidateMode.always,
                  decoration: InputDecoration(
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
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: const BorderSide(
                            color: Colors.black12,
                            width: 2
                        )),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text("+91",
                   textAlign: TextAlign.center,
                   style: GoogleFonts.lexend(
                   color: Colors.black87,
                   fontWeight: FontWeight.w600,
                       fontSize: 16
                           ),

                         ),
                    ),
                    label: const Text("Enter Phone Number"),
                    labelStyle: GoogleFonts.lexend(
                        color: Color.fromRGBO(170,170, 170,1),fontSize: 16,),
                    filled: true,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    fillColor: const Color.fromRGBO(255,255,255, 1),
                  ),
                  validator: (value) {
                    if (_phone.text.length==10) {
                      return null;
                    } else {
                      return 'Please enter a valid Phone Number';
                    }
                  },

                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.03,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width*0.92,
                height: MediaQuery.of(context).size.height*0.07,

                decoration:   BoxDecoration(
                  color: const Color.fromRGBO(99, 24, 175,1),
                  borderRadius: BorderRadius.circular(12),
                 ),

                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(99, 24, 175,1),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                   primary: const Color.fromRGBO(99, 24, 175,1),
                  ),
                  onPressed: () async{

                    if(_key.currentState!.validate()){
                      await FirebaseAuth.instance.verifyPhoneNumber(
                        phoneNumber: '+91${_phone.text.toString()}',
                        verificationCompleted: (PhoneAuthCredential credential) {

                        },
                        verificationFailed: (FirebaseAuthException e) {
                          print("Error is:${e.toString().trim().split(']')[1].split(".")[0]}");
                          showDialog(context: context, builder: (context){
                            return AlertDialog(
                              title: Text("Error",style: GoogleFonts.lexend(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600
                              )),
                              content: Text(
                                  e.toString().trim().split(']')[1].split(".")[0],
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.lexend(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400
                                  )
                              ),
                              backgroundColor: Colors.white,
                            );
                          });
                        },
                        codeSent: (String verificationId, int? resendToken) {
                          Onboarding_15.verify=verificationId;
                          print("Code Has Been Send");
                          Navigator.pushReplacement(
                              context,
                              PageTransition(
                                child: onboarding_11(phone: _phone.text.trim()),
                                type: PageTransitionType.rightToLeftJoined,
                                duration: const Duration(milliseconds: 650),
                                childCurrent: const Onboarding_15(),
                              )

                          );

                        },
                        codeAutoRetrievalTimeout: (String verificationId) {},
                      );
                    }
                  },

                  child: Text("Continue",style: GoogleFonts.lexend(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.w400
                  )),
                ),),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.25,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Text("By continuing, you agree to our", style:GoogleFonts.lexend(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: const Color. fromRGBO(120, 120, 120, 1)
              ),textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Terms of Service", style:GoogleFonts.lexend(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                    color: const Color. fromRGBO(120, 120, 120, 1)
                ),),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.02,
                ),
                Text("PrivacyPolicy", style:GoogleFonts.lexend(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                    color: const Color. fromRGBO(120, 120, 120, 1)
                ),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }

}
