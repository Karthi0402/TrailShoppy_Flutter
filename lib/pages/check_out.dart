import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app/pages/delivery.dart';

// Define your custom styles and constants
class AppStyles {
  static const TextStyle titleTextStyle = TextStyle(
    fontSize: 16,
    fontFamily: "Poppins",
    fontWeight: FontWeight.w600,
    color: Color(0xFF222222),
  );

  static const TextStyle regularTextStyle = TextStyle(
    color: Color(0xFF000000),
    fontSize: 14,
    fontFamily: "Poppins",
    fontWeight: FontWeight.w400,
  );

  static const TextStyle tipTextStyle = TextStyle(
    fontSize: 16,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    color: Color(0xFFF19305),
  );
}

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 26),
              Text("Bill Details", style: AppStyles.titleTextStyle),
              const SizedBox(height: 22),
              buildLocationInfo(
                color: Color(0xFF4CAF50),
                text: 'Vijay Complex, Bhavanipur Colony, Shas...',
              ),
              const SizedBox(height: 16),
              buildLocationInfo(
                color: Color(0xFFED4C5C),
                text: 'Paradise Residency, Bhavanipur Colony, ...',
              ),
              const SizedBox(height: 16),
              buildDeliveryInfo(),
              const Divider(
                color: Color(0xFFCDCDCD),
              ),
              const SizedBox(height: 12),
              Text("Tip the driver", style: AppStyles.tipTextStyle),
              const SizedBox(height: 8),
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: buildTipContainer("₹10"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: buildTipContainer("₹20"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: buildTipContainer("₹30"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: buildTipContainer("₹40"),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text("Charges", style: AppStyles.tipTextStyle),
              const SizedBox(
                height: 26,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  width: double.infinity,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Delivery Charge",
                        style: AppStyles.regularTextStyle,
                      ),
                      Text(
                        "₹80/-",
                        style: AppStyles.regularTextStyle,
                      )
                    ],
                  ),
                ),
              ),
              const Divider(
                color: Color(0xFFCDCDCD),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  width: double.infinity,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Amount",
                        style: AppStyles.regularTextStyle,
                      ),
                      Text(
                        "₹80/-",
                        style: AppStyles.regularTextStyle,
                      )
                    ],
                  ),
                ),
              ),
              const Divider(
                color: Color(0xFFCDCDCD),
              ),
              const SizedBox(
                height: 85,
              ),
              const Divider(
                color: Color(0xFFF19305),
                height: 0.5,
              ),
              SizedBox(height: 17),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        padding: const EdgeInsets.fromLTRB(6, 1, 5, 1),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFF19305),
                        ),
                        child: const Text(
                          "%",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          "Apply Coupon",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFF19305),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    'assets/icons/arrowdown.svg', // Replace with the correct path to your SVG file
                    width: 24, // Customize the width
                    height: 24, // Customize the icon color
                  ),
                ],
              ),
              SizedBox(height: 16,),
              const Divider(
                color: Color(0xFFF19305),
                height: 0.5,
              ),
              SizedBox(height: 17),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        child:  SvgPicture.asset(
                          "assets/icons/indianrupee.svg",
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          "Apply Coupon",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFF19305),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    'assets/icons/arrowdown.svg', // Replace with the correct path to your SVG file
                    width: 24, // Customize the width
                    height: 24, // Customize the icon color
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Container(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Delivery()));
                    
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFF19305),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    "Make Payment",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }

  Widget buildLocationInfo({required Color color, required String text}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
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

  Widget buildDeliveryInfo() {
    return Padding(
      padding: const EdgeInsets.only(left: 103),
      child: Container(
        child: Row(
          children: [
            Text(
              "5km",
              style: AppStyles.regularTextStyle.copyWith(
                color: Color(0xFF667085),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Dash(
                direction: Axis.vertical,
                length: 20,
                dashLength: 20,
                dashColor: Color(0xFFB3B3B3),
              ),
            ),
            Text(
              "35-40 min Delivery",
              style: AppStyles.regularTextStyle.copyWith(
                color: Color(0xFF667085),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTipContainer(String tipAmount) {
    return Container(
      width: 46.0,
      height: 42.0,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: Color(0xFFBBC1CC),
          width: 1.0,
        ),
      ),
      padding: const EdgeInsets.all(10.0),
      child: Text(
        tipAmount,
        style: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color(0xFF000000),
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      toolbarHeight: 36,
      elevation: 0,
      backgroundColor: const Color(0xffFFFFFF),
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: GestureDetector(
          onTap: () {
            // Add functionality for the leading icon here
            Navigator.pop(context);
          },
          child: Container(
            width: 36,
            height: 36,
            padding: const EdgeInsets.all(8),
            alignment: Alignment.center,
            child: SvgPicture.asset(
              "assets/icons/arrowdown2.svg",
              color: Colors.black,
            ),
          ),
        ),
      ),
      title: const Padding(
        padding: EdgeInsets.all(0),
        child: Text(
          "Checkout",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            fontStyle: FontStyle.normal,
            height: 1.4,
            fontWeight: FontWeight.w500,
            color: Color(0xff000000),
          ),
        ),
      ),
    );
  }
}
