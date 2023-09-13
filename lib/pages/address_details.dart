import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/pages/booking_details.dart';

class AddressDetails extends StatefulWidget {
  const AddressDetails({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
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
              const SizedBox(height: 22),
              const Text(
                'Address Details',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xFF000000),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 22),
              buildTextField(
                "Pickup Address",
                "Enter Pickup Address",
                (text) {
                  pAddress = text;
                },
              ),
              const SizedBox(height: 22),
              buildTextField(
                "Delivery Address",
                "Enter Delivery Address",
                (text) {
                  dAddress = text;
                },
              ),
              const SizedBox(height: 22),
              buildTextField(
                "Package Contents",
                "e.g. Food, Medicines",
                (text) {
                  pContent = text;
                },
              ),
              const SizedBox(height: 224),
              const Text(
                "By confirming, I accept that the contents of this order do not include any illegal items. I understand that delivery partners may verify package contents and have the right to refuse the task if any concerns arise during verification.",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 10,
                  color: Color(0xFF98A2B3),
                ),
              ),
              const SizedBox(height: 16),
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
                    backgroundColor: const Color(0xFFF19305),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
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
          style: const TextStyle(
            fontSize: 16,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            color: Color(0xFF475467),
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          cursorColor: Colors.black,
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Color(0xFFD0D5DD)),
            ),
            focusedBorder: const OutlineInputBorder(
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
              // ignore: deprecated_member_use
              color: Colors.black,
            ),
          ),
        ),
      ),
      title: const Padding(
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
