import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class home_screen extends StatelessWidget {
  home_screen({super.key});
  final List<String> tc=["Starters","Drinks","Rice","Curry","Desserts"];
  final List<String> starters=["Grill Chicken","Mashroom Fry","Veggies Fry"];
  final List<String> main_course=["Briyani","Bread","Plan Rice"];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: AutoSizeText(
          "Hi, Monica!",
          style: GoogleFonts.lexend(
              color: const Color.fromRGBO(99, 24, 175, 1),
              fontSize: 30,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            "Current location",
                            style: GoogleFonts.lexend(
                                color: Colors.black54,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on_outlined,
                                color: Color.fromRGBO(99, 24, 175, 1),
                              ),
                              AutoSizeText(
                                "Hyderabad",
                                style: GoogleFonts.lexend(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Icon(
                            Icons.play_circle_outline,
                            color: Color.fromRGBO(99, 24, 175, 1),
                          ),
                          AutoSizeText(
                            "How it works?",
                            style: GoogleFonts.lexend(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: size.height * 0.2,
                  width: size.width,
                  child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(left: 10,top: 10),
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        height: size.height * 0.2,
                        width: size.width * 0.86,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(13)),
                            image: DecorationImage(
                                image: AssetImage("assets/images/food1.png"),
                                fit: BoxFit.fill)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: SizedBox(
                    height: size.height * 0.06,
                    width: size.width * 0.86,
                    child: Material(
                      borderRadius: BorderRadius.circular(12),
                      elevation: 5,
                      shadowColor: Colors.grey[100],
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Search food or events",
                            hintStyle: GoogleFonts.lexend(
                                color: Colors.grey[700],
                                fontSize: 16,
                                fontWeight: FontWeight.w300),
                            suffixIcon: const Icon(
                              Icons.search,
                              color: Color.fromRGBO(99, 24, 175, 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(color: Colors.grey)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide:
                                    const BorderSide(color: Colors.grey))),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                AutoSizeText(
                  "    Start crafting",
                  style: GoogleFonts.lexend(
                      color: const Color.fromRGBO(99, 24, 175, 1),
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  //height: size.height * 0.2,
                  width: size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Material(
                        elevation: 3,
                        borderRadius: const BorderRadius.all(Radius.circular(15)),
                        child: Column(
                          children: [
                            Container(

                              height: size.height * 0.1,
                              width: size.width * 0.4,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/food2.png"),
                                      fit: BoxFit.fill)),
                            ),
                            SizedBox(
                              height: size.height * 0.04,
                              width: size.width*0.4,
                               child: Center(
                                 child: AutoSizeText(
                                   "Default Platters",
                                   style: GoogleFonts.lexend(
                                       color: Colors.black,
                                       fontSize: 15,
                                       fontWeight: FontWeight.w500),
                                 ),
                               ),
                            )
                          ],
                        ),
                      ),
                      Material(
                        elevation: 3,
                        borderRadius: const BorderRadius.all(Radius.circular(15)),
                        child: Column(
                          children: [
                            Container(
                              height: size.height * 0.1,
                              width: size.width * 0.4,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/food3.png"),
                                      fit: BoxFit.fill)),
                            ),
                            SizedBox(
                              height: size.height * 0.04,
                              width: size.width*0.4,
                               child: Center(
                                 child: AutoSizeText(
                                   "Default Platters",
                                   style: GoogleFonts.lexend(
                                       color: Colors.black,
                                       fontSize: 15,
                                       fontWeight: FontWeight.w500),
                                 ),
                               ),
                            )
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: size.height*0.234,
                  child: ListView.builder(
                    //padding: const EdgeInsets.only(right: 20,bottom: 8,top: 8),
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(right: 15,bottom: 8,top: 8,left: 10),
                      child: Stack(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: size.width*0.045,),
                            Material(
                                elevation: 3,
                                shadowColor: Colors.grey[700],
                                borderRadius: const BorderRadius.all(Radius.circular(12)),
                                child: Container(
                                  width: size.width*0.4,
                                  padding: const EdgeInsets.fromLTRB(15, 5, 10, 5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        "Default Menu ${index+1}",
                                        style: GoogleFonts.lexend(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: size.height*0.01,
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: AutoSizeText(
                                          "3 starters\n3 maincourse\n3 desserts\n3 drinks",
                                          style: GoogleFonts.lexend(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      SizedBox(
                                        height: size.height*0.01,
                                      ),
                                      Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  const Icon(Icons.person,color: Colors.grey,size: 18,),
                                                  AutoSizeText(
                                                    " Min 800",
                                                    style: GoogleFonts.lexend(
                                                        color: Colors.grey,
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.w400),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: size.height*0.006,
                                              ),
                                              AutoSizeText(
                                                "Starts at \u{20B9} 777",
                                                style: GoogleFonts.lexend(
                                                    color: const Color.fromRGBO(99, 24, 175, 1),
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500),
                                              )
                                            ],
                                          )),],
                                  ),
                                )
                            ),
                          ],
                        ),
                        Column(

                          children: [
                            SizedBox(height: size.height*0.017,),
                            Container(
                              height: size.width*0.23,
                              width: size.width*0.23,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/images/food4_2.png"))
                              ),
                            )
                          ],
                        ),
                      ],
                  ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                AutoSizeText(
                  "    Top Categories",
                  style: GoogleFonts.lexend(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: size.height*0.15,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(top: 8,left: 22),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) =>
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 8),
                              height: size.height*0.083,
                              width: size.width*0.18,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/tc${index+1}.png"),fit: BoxFit.fill)
                              ),
                            ),
                            AutoSizeText(
                              tc[index],
                              style: GoogleFonts.lexend(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300),
                            ),
                      ],
                    )
                  ),
                ),
                AutoSizeText(
                  "    Starters",
                  style: GoogleFonts.lexend(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: size.height*0.18,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(top: 8,left: 22,bottom: 3),
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, index) =>
                          SizedBox(
                            width: size.width*0.4,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10,left: 5),
                              child: Material(
                                elevation: 3,
                                borderRadius: const BorderRadius.all(Radius.circular(15)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(

                                      height: size.height * 0.12,
                                      width: size.width * 0.4,
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                                          image: DecorationImage(
                                              image: AssetImage("assets/images/starter${index%3}.png"),
                                              fit: BoxFit.fill)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5,left: 10),
                                      child: AutoSizeText(
                                        starters[index%3],
                                        style: GoogleFonts.lexend(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                AutoSizeText(
                  "    Main Course",
                  style: GoogleFonts.lexend(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: size.height*0.18,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(top: 8,left: 22,bottom: 3),
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) =>
                        SizedBox(
                          width: size.width*0.4,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10,left: 5),
                            child: Material(
                              elevation: 3,
                              borderRadius: const BorderRadius.all(Radius.circular(15)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(

                                    height: size.height * 0.12,
                                    width: size.width * 0.4,
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                                        image: DecorationImage(
                                            image: AssetImage("assets/images/main${index%3}.png"),
                                            fit: BoxFit.fill)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5,left: 10),
                                    child: AutoSizeText(
                                      main_course[index%3],
                                      style: GoogleFonts.lexend(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                AutoSizeText(
                  "    Services",
                  style: GoogleFonts.lexend(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: size.height*0.54,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(top: 8,left: 22,bottom: 3),
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) =>
                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          child: Container(
                            width: size.width*0.75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2
                                )
                              ]
                            ),
                            child:  Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: size.width*0.7,
                                    height: size.height*0.2,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: const DecorationImage(image: AssetImage("assets/images/service_1.png"),fit: BoxFit.fill)
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height*0.02,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: size.width*0.07,
                                        height: size.height*0.047,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                            borderRadius: BorderRadius.circular(10),
                                            image: const DecorationImage(image: AssetImage("assets/images/signature_blue.png"),fit: BoxFit.fill)
                                        ),
                                      ),
                                      SizedBox(
                                        width: size.width*0.02,
                                      ),
                                      AutoSizeText(
                                        "Signature",
                                        style: GoogleFonts.lexend(
                                            color: const Color.fromRGBO(99, 24, 175, 1),
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400),
                                      ),

                                    ],
                                  ),
                                  SizedBox(
                                    height: size.height*0.01,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: size.width*0.055,
                                        height: size.height*0.03,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(10),
                                            image: const DecorationImage(image: AssetImage("assets/images/star.png"),fit: BoxFit.fill)
                                        ),
                                      ),
                                      SizedBox(
                                        width: size.width*0.01,
                                      ),
                                      AutoSizeText(
                                        "High Quality Disposable Cutlery",
                                        style: GoogleFonts.lexend(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400),
                                      ),

                                    ],
                                  ),
                                  SizedBox(
                                    height: size.height*0.015,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: size.width*0.055,
                                        height: size.height*0.03,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(10),
                                            image: const DecorationImage(image: AssetImage("assets/images/star.png"),fit: BoxFit.fill)
                                        ),
                                      ),
                                      SizedBox(
                                        width: size.width*0.01,
                                      ),
                                      AutoSizeText(
                                        "Elegant Decorations & Table Settings",
                                        style: GoogleFonts.lexend(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400),
                                      ),

                                    ],
                                  ),
                                  SizedBox(
                                    height: size.height*0.015,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: size.width*0.055,
                                        height: size.height*0.03,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(10),
                                            image: const DecorationImage(image: AssetImage("assets/images/star.png"),fit: BoxFit.fill)
                                        ),
                                      ),
                                      SizedBox(
                                        width: size.width*0.01,
                                      ),
                                      AutoSizeText(
                                        "Served by Waitstaff",
                                        style: GoogleFonts.lexend(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400),
                                      ),

                                    ],
                                  ),
                                  SizedBox(
                                    height: size.height*0.015,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: size.width*0.055,
                                        height: size.height*0.03,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(10),
                                            image: const DecorationImage(image: AssetImage("assets/images/star.png"),fit: BoxFit.fill)
                                        ),
                                      ),
                                      SizedBox(
                                        width: size.width*0.01,
                                      ),
                                      AutoSizeText(
                                        "Best for Weddings, Corporate Event...",
                                        style: GoogleFonts.lexend(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400),
                                      ),

                                    ],
                                  ),
                                  SizedBox(
                                    height: size.height*0.015,
                                  ),
                                  AutoSizeText(
                                    "Know More",
                                    style: GoogleFonts.lexend(
                                        color: const Color.fromRGBO(99, 24, 175, 1),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: size.height*1.24,
                  child: Stack(
                    children: [
                      AutoSizeText(
                        "    How does it work ?",
                        style: GoogleFonts.lexend(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: size.height*0.4,
                        width: size.width,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                width: size.width*0.5,
                                height: size.height*0.5,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(image: AssetImage("assets/images/left_shade.png"),fit: BoxFit.fill)
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: size.width*0.07),
                                child: Container(
                                  width: size.width*0.3,
                                  height: size.height*0.15,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(image: AssetImage("assets/images/work_1.png"),fit: BoxFit.fill)
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding:  EdgeInsets.only(right: size.width*0.03,top: size.height*0.06),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AutoSizeText(
                                      "Customize Menu",
                                      style: GoogleFonts.lexend(
                                          color: const Color.fromRGBO(99, 24, 175, 1),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: size.height*0.003,
                                    ),
                                    SizedBox(
                                      width: size.width*0.55,
                                      child: AutoSizeText(
                                        "Select items for a single event or multiple events",
                                        style: GoogleFonts.lexend(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                        softWrap: true,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.05,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Positioned(
                        top: size.height*0.15,
                        child: SizedBox(
                          height: size.height*0.5,
                          width: size.width,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  width: size.width*0.6,
                                  height: size.height*0.5,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(image: AssetImage("assets/images/right_shade.png"),fit: BoxFit.fill)
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: EdgeInsets.only(right: size.width*0.07),
                                  child: Container(
                                    width: size.width*0.3,
                                    height: size.height*0.15,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: const DecorationImage(image: AssetImage("assets/images/work_2.png"),fit: BoxFit.fill)
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:  EdgeInsets.only(left: size.width*0.07,),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        "Choose Services",
                                        style: GoogleFonts.lexend(
                                            color: const Color.fromRGBO(99, 24, 175, 1),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: size.height*0.003,
                                      ),
                                      SizedBox(
                                        width: size.width*0.53,
                                        child: AutoSizeText(
                                          "Select the type of services from varying cutlery, mode of serving options, & more",
                                          style: GoogleFonts.lexend(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w300),
                                          softWrap: true,
                                        ),
                                      ),
                                      SizedBox(
                                        height: size.height*0.05,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Positioned(
                        top: size.height*0.35,
                        child: SizedBox(
                          height: size.height*0.4,
                          width: size.width,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: size.width*0.5,
                                  height: size.height*0.5,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(image: AssetImage("assets/images/left_shade.png"),fit: BoxFit.fill)
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: size.width*0.07),
                                  child: Container(
                                    width: size.width*0.3,
                                    height: size.height*0.15,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: const DecorationImage(image: AssetImage("assets/images/work_3.png"),fit: BoxFit.fill)
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding:  EdgeInsets.only(right: size.width*0.03,top: size.height*0.06),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        "Dynamic Pricing",
                                        style: GoogleFonts.lexend(
                                            color: const Color.fromRGBO(99, 24, 175, 1),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: size.height*0.003,
                                      ),
                                      SizedBox(
                                        width: size.width*0.55,
                                        child: AutoSizeText(
                                          "Price per plate varies with no. of items in a plate and no. of plates selected",
                                          style: GoogleFonts.lexend(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w300),
                                          softWrap: true,
                                        ),
                                      ),
                                      SizedBox(
                                        height: size.height*0.05,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Positioned(
                        top: size.height*0.5,
                        child: SizedBox(
                          height: size.height*0.5,
                          width: size.width,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  width: size.width*0.6,
                                  height: size.height*0.5,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(image: AssetImage("assets/images/right_shade.png"),fit: BoxFit.fill)
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: EdgeInsets.only(right: size.width*0.07),
                                  child: Container(
                                    width: size.width*0.3,
                                    height: size.height*0.15,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(image: AssetImage("assets/images/work_4.png"),fit: BoxFit.fill)
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:  EdgeInsets.only(left: size.width*0.07,),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        "Track Your Order",
                                        style: GoogleFonts.lexend(
                                            color: const Color.fromRGBO(99, 24, 175, 1),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: size.height*0.003,
                                      ),
                                      SizedBox(
                                        width: size.width*0.53,
                                        child: AutoSizeText(
                                          "Track the order status and seek help from the executives anytime",
                                          style: GoogleFonts.lexend(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w300),
                                          softWrap: true,
                                        ),
                                      ),
                                      SizedBox(
                                        height: size.height*0.05,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Positioned(
                        top: size.height*0.72,
                        child: SizedBox(
                          height: size.height*0.4,
                          width: size.width,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: size.width*0.5,
                                  height: size.height*0.5,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(image: AssetImage("assets/images/left_shade.png"),fit: BoxFit.fill)
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: size.width*0.07),
                                  child: Container(
                                    width: size.width*0.3,
                                    height: size.height*0.15,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: const DecorationImage(image: AssetImage("assets/images/work_5.png"),fit: BoxFit.fill)
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding:  EdgeInsets.only(right: size.width*0.03,top: size.height*0.06),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        "Taste Your Samples",
                                        style: GoogleFonts.lexend(
                                            color: const Color.fromRGBO(99, 24, 175, 1),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: size.height*0.003,
                                      ),
                                      SizedBox(
                                        width: size.width*0.55,
                                        child: AutoSizeText(
                                          "Explode your taste bud with samples of what you order(on request for eligible orders)",
                                          style: GoogleFonts.lexend(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w300),
                                          softWrap: true,
                                        ),
                                      ),
                                      SizedBox(
                                        height: size.height*0.05,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Positioned(
                        top: size.height*0.9,
                        child: SizedBox(
                          height: size.height*0.4,
                          width: size.width,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  width: size.width*0.6,
                                  height: size.height*0.4,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(image: AssetImage("assets/images/right_shade.png"),fit: BoxFit.fill)
                                  ),
                                ),
                              ),
                              Positioned(
                                left: size.width*0.65,
                                top: size.height*0.12,
                                child: Padding(
                                  padding: EdgeInsets.only(right: size.width*0.07),
                                  child: Container(
                                    width: size.width*0.3,
                                    height: size.height*0.15,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(image: AssetImage("assets/images/work_6.png"),fit: BoxFit.fill)
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: size.height*0.16,
                                right: size.width*0.4,

                                child: Padding(
                                  padding:  EdgeInsets.only(left: size.width*0.07,),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        "Enjoy Food and Services",
                                        style: GoogleFonts.lexend(
                                            color: const Color.fromRGBO(99, 24, 175, 1),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: size.height*0.003,
                                      ),
                                      SizedBox(
                                        width: size.width*0.53,
                                        child: AutoSizeText(
                                          "Enjoy event with delicious and customized food",
                                          style: GoogleFonts.lexend(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w300),
                                          softWrap: true,
                                        ),
                                      ),
                                      SizedBox(
                                        height: size.height*0.05,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Color.fromRGBO(248, 248, 248, 1
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height*0.03,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size.width*0.07,right: size.width*0.07),
                        child: AutoSizeText(
                          "Delicious food with professional service !",
                          style: GoogleFonts.lexend(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: size.height*0.17,
                      ),
                    ],
                  ),
                )

              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
              height: size.height*0.07,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.home,color: const Color.fromRGBO(99, 24, 175, 1),size: size.height*0.045,),
                      AutoSizeText(
                        "Home",
                        style: GoogleFonts.lexend(
                            color: const Color.fromRGBO(99, 24, 175, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.favorite_outline_outlined,color: const Color.fromRGBO(126, 126, 126, 1),size: size.height*0.04,),
                      AutoSizeText(
                        "Wishlist",
                        style: GoogleFonts.lexend(
                            color: const Color.fromRGBO(126, 126, 126, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const SizedBox(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/plate.png"),
                        backgroundColor: Colors.transparent,
                        radius: size.height*0.024,
                      ),
                      AutoSizeText(
                        "Orders",
                        style: GoogleFonts.lexend(
                            color: const Color.fromRGBO(126, 126, 126, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/person.png"),
                        backgroundColor: Colors.transparent,
                        radius: size.width*0.037,
                      ),
                      AutoSizeText(
                        "Profile",
                        style: GoogleFonts.lexend(
                            color: const Color.fromRGBO(126, 126, 126, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: size.width*0.425,
            bottom: size.height*0.045,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/logo.png"),
              radius: size.width*0.065,
            ),
          )
        ],
      ),

    );
  }
}
