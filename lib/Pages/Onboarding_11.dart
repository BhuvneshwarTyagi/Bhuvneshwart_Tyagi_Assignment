import 'package:auto_size_text/auto_size_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pinput/pinput.dart';

import 'Onboarding_15.dart';
import 'Onboarding_4.dart';

class onboarding_11 extends StatefulWidget {
  final phone;
  const onboarding_11({Key? key, required this.phone}) : super(key: key);

  @override
  State<onboarding_11> createState() => _onboarding_11State();
}

class _onboarding_11State extends State<onboarding_11> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  var code = "";
  @override
  Widget build(BuildContext context) {
    const defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border(
            left: BorderSide(
              color: Color.fromRGBO(234, 239, 243, 1),
            ),
            top: BorderSide(
              color: Color.fromRGBO(234, 239, 243, 1),
            ),
            bottom: BorderSide(
              color: Colors.black,
            ),
            right: BorderSide(
              color: Color.fromRGBO(234, 239, 243, 1),
            )),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 25,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        title: Text("OTP Verification",
            style: GoogleFonts.lexend(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w400)),
      ),
      backgroundColor: const Color.fromRGBO(247, 246, 240, 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            AutoSizeText("We have sent a verification code to",
                style: GoogleFonts.lexend(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoSizeText(
                    "+91-XXXXXX${widget.phone[6]}${widget.phone[7]}${widget.phone[8]}${widget.phone[9]}",
                    style: GoogleFonts.lexend(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    )),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage("assets/images/verified.png"),
                  radius: MediaQuery.of(context).size.width * 0.04,
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Pinput(
              length: 6,
              cursor: const Text("|",
                  style: TextStyle(
                      color: Color.fromRGBO(99, 24, 175, 1), fontSize: 25)),
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: defaultPinTheme,
              submittedPinTheme: defaultPinTheme,
              showCursor: true,
              onChanged: (value) {
                setState(() {
                  code = value;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.06,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(99, 24, 175, 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      primary: const Color.fromRGBO(99, 24, 175, 1)),
                  onPressed: () async {
                    // Create a PhoneAuthCredential with the code
                    try {
                      PhoneAuthCredential credential =
                          PhoneAuthProvider.credential(
                              verificationId: Onboarding_15.verify,
                              smsCode: code);

                      // Sign the user in (or link) with the credential
                      await auth.signInWithCredential(credential).then((value) {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                              child: const Onboarding_4(),
                              type: PageTransitionType.rightToLeftJoined,
                              duration: const Duration(milliseconds: 650),
                              childCurrent: onboarding_11(phone: widget.phone),
                            ));
                      }).onError((error, stackTrace) {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text("Error"),
                                content: Text(error.toString()),
                                backgroundColor: Colors.white70,
                              );
                            });
                      });
                    } catch (e) {}
                  },
                  child: Text("Submit",
                      style: GoogleFonts.lexend(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.w400)),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            signInOption()
          ],
        ),
      ),
    );
  }

  Row signInOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Didn't receive code?",
            style: GoogleFonts.lexend(
              color: const Color.fromRGBO(120, 120, 120, 1),
              fontSize: 18,
              fontWeight: FontWeight.w400,
            )),
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                PageTransition(
                  child: const Onboarding_15(),
                  type: PageTransitionType.leftToRightJoined,
                  duration: const Duration(milliseconds: 650),
                  childCurrent: const Onboarding_15(),
                ));
          },
          child: Text(
            "Resend Again.",
            style: GoogleFonts.lexend(
              color: const Color.fromRGBO(99, 24, 175, 1),
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      ],
    );
  }
}
