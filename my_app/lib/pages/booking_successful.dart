import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppStyles {
  static const TextStyle regularTextStyle = TextStyle(
    color: Color(0xFF000000),
    fontSize: 14,
    fontFamily: "Poppins",
    fontWeight: FontWeight.w400,
  );
}

class BookingSuccess extends StatelessWidget {
  const BookingSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
          children: [
            const SizedBox(height: 100),
            Container(
              width: 94,
              height: 94,
              decoration: const BoxDecoration(
                  color: Color(0x1F098041), shape: BoxShape.circle),
              child: Center(child: SvgPicture.asset("assets/icons/tick.svg")),
            ),
            const SizedBox(
              height: 26,
            ),
            const Text(
              "Package Delivered",
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Your package has been delivered",
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 20),
            buildLocationInfo(
              color: const Color(0xFF4CAF50),
              text: 'Vijay Complex, Bhavanipur Colony, Shas...',
            ),
            const SizedBox(height: 16),
            buildLocationInfo(
              color: const Color(0xFFED4C5C),
              text: 'Paradise Residency, Bhavanipur Colony, ...',
            ),
            const SizedBox(
              height: 16,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Divider(
                thickness: 0.5,
                color: Color(0xFFCDCDCD),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Thank you for choosing us!",
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 88,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF19305),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    "Done",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }

  Widget buildLocationInfo({required Color color, required String text}) {
    return Padding(
      padding: const EdgeInsets.only(left: 56),
      child: Row(
        children: [
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
          ),
          const SizedBox(width: 20),
          Text(text, style: AppStyles.regularTextStyle),
        ],
      ),
    );
  }
}
