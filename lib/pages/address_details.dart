import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/pages/booking_details.dart';

class AddressDetails extends StatefulWidget {
  const AddressDetails({Key? key}) : super(key: key);

  @override
  _AddressDetailsState createState() => _AddressDetailsState();
}

class _AddressDetailsState extends State<AddressDetails> {
  String? pAddress;
  String? dAddress;
  String? pContent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 22),
              Text(
                'Address Details',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xFF000000),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 22),
              buildTextField(
                "Pickup Address",
                "Enter Pickup Address",
                (text) {
                  pAddress = text;
                },
              ),
              SizedBox(height: 22),
              buildTextField(
                "Delivery Address",
                "Enter Delivery Address",
                (text) {
                  dAddress = text;
                },
              ),
              SizedBox(height: 22),
              buildTextField(
                "Package Contents",
                "e.g. Food, Medicines",
                (text) {
                  pContent = text;
                },
              ),
              SizedBox(height: 224),
              Text(
                "By confirming, I accept that the contents of this order do not include any illegal items. I understand that delivery partners may verify package contents and have the right to refuse the task if any concerns arise during verification.",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 10,
                  color: Color(0xFF98A2B3),
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    if (pAddress != null &&
                        dAddress != null &&
                        pContent != null) {
                      // Process the data
                      print('Pickup Address: $pAddress');
                      print('Delivery Address: $dAddress');
                      print('Package Contents: $pContent');

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BookingDetails()));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFF19305),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String label, String hint, Function(String) onChanged) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            color: Color(0xFF475467),
          ),
        ),
        SizedBox(height: 8),
        TextField(
          cursorColor: Colors.black,
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Color(0xFFD0D5DD)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black, // Change border color here
              ),
            ),
          ),
        ),
      ],
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
      title: Padding(
        padding: EdgeInsets.all(0),
        child: Text(
          "Delivery",
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
