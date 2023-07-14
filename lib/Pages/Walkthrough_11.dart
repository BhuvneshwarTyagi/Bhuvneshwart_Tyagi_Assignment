import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'Onboarding_15.dart';

class Walkthrough_11 extends StatefulWidget {
  const Walkthrough_11({Key? key}) : super(key: key);

  @override
  State<Walkthrough_11> createState() => _Walkthrough_11State();
}

class _Walkthrough_11State extends State<Walkthrough_11> {
  PageController pageController = PageController();
  var current_page=0;
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Material(
      child: Stack(
        children: [
          Scaffold(
            extendBodyBehindAppBar: true,
            backgroundColor: Colors.white,
            body: PageView(
              controller: pageController,
              key: _key,
              scrollDirection: Axis.horizontal,
              reverse: false,
              physics: const BouncingScrollPhysics(),
              pageSnapping: true,
              onPageChanged: (index){
                setState(() {
                  current_page=index;
                });
              },
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: size.height*0.08,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 30,left: 30,right: 30),
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.9,
                        height: MediaQuery.of(context).size.height*0.4,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage("assets/images/image_1.png"),
                          )
                        ),
                      ),
                    ),
                    Text("Create Your Own Plate",
                    style: GoogleFonts.lexend(
                      color: Colors.black,
                      fontSize: 26,
                      fontWeight: FontWeight.w400,
                    ),
                    ),
                    SizedBox(
                      height: size.height*0.02,
                    ),
                     Padding(
                       padding: const EdgeInsets.only(left: 15,right: 15),
                       child: Text("Create unforgettable memories with our unique feature to curate your favorite cuisines and food, tailored to your special occasion.",
                       textAlign:TextAlign.center,
                           style: GoogleFonts.lexend(
                               color: Color.fromRGBO(123, 123, 123, 1),
                               fontSize: 20,
                               fontWeight: FontWeight.w300
                           ),
                       ),
                     ),
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: size.height*0.1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 48,right: 47),
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.9,
                        height: MediaQuery.of(context).size.height*0.4,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage("assets/images/img_2.png"),
                            )
                        ),
                      ),
                    ),
                    Text("Exquisite Catering",
                      style: GoogleFonts.lexend(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: size.height*0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15),
                      child: Text("Experience culinary artistry like never before with our innovative and exquisite cuisine creations",
                        textAlign:TextAlign.center,
                        style: GoogleFonts.lexend(
                            color: Color.fromRGBO(123, 123, 123, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.w300
                        ),
                      ),
                    ),

                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: size.height*0.1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 67,right: 66),
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.9,
                        height: MediaQuery.of(context).size.height*0.4,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage("assets/images/image_3.png"),
                            )
                        ),
                      ),
                    ),
                    Text("Personal Order Executive",
                      style: GoogleFonts.lexend(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: size.height*0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15),
                      child: Text("Embark on a personalized culinary journey with our dedicated one-to-one customer support, ensuring a seamless and satisfying experience every step of the way.",
                        textAlign:TextAlign.center,
                        style: GoogleFonts.lexend(
                            color: Color.fromRGBO(123, 123, 123, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.w300
                        ),
                      ),
                    ),
                  ],
                ),


              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height*0.06,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(size.width*0.2, size.height*0.02),
                          backgroundColor:const Color.fromRGBO(224, 212, 236, 1),
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0))
                          )
                      ),
                      onPressed: (){

                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                              child: const Onboarding_15(),
                              type: PageTransitionType.rightToLeftJoined,
                              duration: const Duration(milliseconds: 650),
                              childCurrent: const Walkthrough_11(),
                            )

                        );
                      },
                      child: Text("Skip",
                        style: GoogleFonts.lexend(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            fontStyle: FontStyle.normal,
                            color: const Color.fromRGBO(99, 24, 175, 1)
                        ),
                      )
                  ),
                ),
                SizedBox(
                  height: size.height*0.65,
                ),
                row(),
                SizedBox(
                  height: size.height*0.1,
                ),
                Button(),
              ],
            ),
          ),
        ],
      ),
    );
  }
  
  Widget row(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Container(
          height: MediaQuery.of(context).size.height*0.014,
          width: MediaQuery.of(context).size.width*0.08,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: current_page==0? const Color.fromRGBO(99, 24, 175, 1) : const Color.fromRGBO(224, 212, 236, 1)
          ),
        ),
        SizedBox(width: MediaQuery.of(context).size.width*0.03,),
        Container(
          height: MediaQuery.of(context).size.height*0.014,
          width: MediaQuery.of(context).size.width*0.08,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: current_page==1? Color.fromRGBO(99, 24, 175, 1) : Color.fromRGBO(224, 212, 236, 1)
          ),
        ),
        SizedBox(width: MediaQuery.of(context).size.width*0.03,),
        Container(
          height: MediaQuery.of(context).size.height*0.014,
          width: MediaQuery.of(context).size.width*0.08,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: current_page==2? Color.fromRGBO(99, 24, 175, 1) : Color.fromRGBO(224, 212, 236, 1)
          ),
        ),
      ],
    );
  }

  Widget Button(){
    return InkWell(
      onTap: () {
        setState(() {
          if(current_page!=2) {
            current_page++;
            pageController.animateToPage(current_page, duration: const Duration(milliseconds: 500), curve: Curves.linear);
          }
          else{
            Navigator.pushReplacement(
                context,
                PageTransition(
                  child: const Onboarding_15(),
                  type: PageTransitionType.rightToLeftJoined,
                  duration: const Duration(milliseconds: 650),
                  childCurrent: const Walkthrough_11(),
                )

            );
          }
        });
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width*0.5,
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                height: MediaQuery.of(context).size.height*0.07,
                alignment: Alignment.center,
                width: (current_page==2)?MediaQuery.of(context).size.width*0.5:MediaQuery.of(context).size.height*0.07,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white,width: 2),
                    color: const Color.fromRGBO(224, 212, 236, 1),

                    borderRadius: BorderRadius.circular(50)
                ),
                child: Align(
                  alignment: current_page==2 ? Alignment.centerLeft : Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 23.0),
                    child: Text(current_page==2 ? "Get Started" : "",
                      style: GoogleFonts.lexend(
                        color: const Color.fromRGBO(99, 24, 175, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )

            ),
            Align(
              alignment: current_page==2 ? Alignment.centerRight : Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10.0),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.05,
                  width: MediaQuery.of(context).size.height*0.05,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white,width: 2),
                      color: const Color.fromRGBO(99, 24, 175, 1),

                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: const Icon(Icons.arrow_forward_outlined,color: Colors.white,size: 25),
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}
