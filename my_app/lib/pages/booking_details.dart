import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app/pages/check_out.dart';

class BookingDetails extends StatefulWidget {
  const BookingDetails({Key? key}) : super(key: key);


  @override
  State<BookingDetails> createState() => _BookingDetailsState();
}

class _BookingDetailsState extends State<BookingDetails> {
  String? sPhone;
  String? rName;
  String? rPhone;
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
              const SizedBox(height: 22),
              const Text(
                'Booking Details',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xFF000000),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 22),
              buildNumberField(
                "Sender's Phone Number ",
                "Enter Sender's Phone Number ",
                (number) {
                  sPhone = number;
                },
              ),
              const SizedBox(height: 22),
              buildTextField(
                "Receiver's Name",
                "Enter Receiver's Name",
                (text) {
                  rName = text;
                },
              ),
              const SizedBox(height: 22),
              buildNumberField(
                "Receiver's Phone Number",
                "Enter Receiver's Phone Number",
                (number) {
                  rPhone = number;
                },
              ),
              const SizedBox(height: 316),
              Container(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    if (sPhone != null &&
                        rName != null &&
                        rPhone != null) {
                      // Process the data
                      print('Pickup Address: $sPhone');
                      print('Delivery Address: $rName');
                      print('Package Contents: $rPhone');

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CheckOut()));
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

  
  Widget buildNumberField(String label, String hint, Function(String) onChanged) {
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
          keyboardType: TextInputType.number,
          cursorColor: Colors.black,
          onChanged: onChanged,
          decoration: InputDecoration(
            suffixIcon: Container(margin: const EdgeInsets.all(10),child: SvgPicture.asset('assets/icons/user.svg')),
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



}
