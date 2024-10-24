import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_profile_page/view/login_page/terms%20of%20service/terms_of_service_page.dart';
import 'package:user_profile_page/view/otp_verification_page/otp_verification_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneNoController = TextEditingController();

  // Global key to manage the form state
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 486,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 25, // Set container at the top of the stack
                            child: Container(
                              height: 461, // Constrained to the stack height
                              width: MediaQuery.of(context).size.width - 24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(48),
                                image: const DecorationImage(
                                  image: AssetImage(
                                    "assets/images/72becdec02de25a38176264a358812d6.jpg",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0, // Adjust this value for text overlap
                            left: 0,
                            child: Text(
                              "QK WASH",
                              style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(32, 117, 243, 1),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Form(
                  key: _formKey, // Assign the form key
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Scan : Pay : Wash : Move ",
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      TextFormField(
                        controller: nameController, // Controller for name
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          hintText: "Enter your Name",
                          hintStyle: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color(0xff1a75d2),
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.red.shade400,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Your Name cannot be empty';
                          } else if (!RegExp('^[A-Za-z]+(?: [A-Za-z]+)*')
                              .hasMatch(value)) {
                            return 'Please enter a valid name';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: phoneNoController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          hintText: "Mobile No",
                          hintStyle: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color(0xff1a75d2),
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.red.shade400,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Your Mobile Number cannot be empty';
                          } else if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
                            return 'Please enter a valid 10-digit Mobile Number';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      InkWell(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            // Navigate to the next screen if the form is valid
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OtpVerificationPage(),
                              ),
                            );
                          }
                        },
                        child: Container(
                          height: 50,
                          width: 161,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(55, 137, 244, 1),
                          ),
                          child: Center(
                            child: Text(
                              "Continue",
                              style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'By clicking, I accept the ',
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black, // Default color
                            ),
                          ),
                          children: [
                            TextSpan(
                              text: 'terms of service',
                              style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(22, 15, 248, 1),
                                ),
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          TermsOfServicePage(),
                                    ),
                                  );
                                },
                            ),
                            const TextSpan(text: '\n and '),
                            TextSpan(
                              text: 'privacy policy',
                              style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(22, 15, 248, 1),
                                ),
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          TermsOfServicePage(),
                                    ),
                                  );
                                },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 33,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
