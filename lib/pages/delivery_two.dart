import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app/pages/booking_successful.dart';

class DevelirySecondPage extends StatelessWidget {
  const DevelirySecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => BookingSuccess(), // Replace with your NextScreen widget
        ),
      );
    });
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Background Image
            Positioned.fill(
              child: Image.asset(
                "assets/icons/maps.png",
                fit: BoxFit.fill,
              ),
            ),

            // Delivery Info
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: 246,
                  height: 42,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x40606060),
                        blurRadius: 1,
                        offset: Offset(0, 1),
                      ),
                    ],
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      "Delivery partner 1.7 km away",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Route SVG
            Positioned(
              top: 265,
              left: 96,
              child: SvgPicture.asset("assets/icons/route.svg"),
            ),

            // Bike SVG
            Positioned(
              top: 260,
              left: 300,
              child: SvgPicture.asset("assets/icons/bike.svg"),
            ),

            // Destination SVG
            Positioned(
              top: 305,
              left: 66,
              child: SvgPicture.asset("assets/icons/desti.svg"),
            ),

            // Delivery Address
            Positioned(
              top: 255,
              left: 66,
              child: Container(
                width: 209,
                height: 41,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(8),
                child: Center(
                  child: Text(
                    "Plot No.6, North, Pocket 1, Sect...",
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF667085),
                    ),
                  ),
                ),
              ),
            ),

            

            // Call Icon
            Positioned(
              top: 404,
              left: 320,
              child: Container(
                width: 40.00323,
                height: 40,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x40606060),
                      blurRadius: 1,
                      offset: Offset(0, 1),
                    ),
                  ],
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(4),
                ),
                padding: EdgeInsets.all(8),
                child: SvgPicture.asset(
                  'assets/icons/XMLID_1_.svg',
                  width: 24,
                  height: 24,
                  color: Colors.black,
                ),
              ),
            ),

            // Driver Details Card
            Positioned(
              top: 465,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(130,17,130,17),
                      child: Divider(
                        thickness: 5,
                        color: Color.fromARGB(255, 73, 71, 71),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 16),
                            child: Text(
                                  "Reaching in",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                          ),
                              Container(
                                width: 55,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFE5E5E5),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    "5 min",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Divider(
                        thickness: 0.5,
                        color: Color(0xFFBBC1CC),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage("assets/icons/proImage.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Text(
                                  "Ashok Kumar",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8, right: 4),
                                    child: Text(
                                      "3.9",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  SvgPicture.asset("assets/icons/star.svg"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 301,
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF1F1F1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.fromLTRB(16, 12, 0, 0),
                            child: TextField(
                              cursorColor: const Color(0xFFF1F1F1),
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.message),
                                hintText: 'Send message to driver',
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xFF7C7C7C),
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF19305),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Center(
                              child: SvgPicture.asset("assets/icons/phone.svg"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}