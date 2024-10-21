import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:user_profile_page/view/aboutscreen/about_screen.dart';
import 'package:user_profile_page/view/contactScreen/contactScreen.dart';
import 'package:user_profile_page/view/profileScreen/profileScreen.dart';
import 'package:user_profile_page/view/washinghistoryScreen/washing_history_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({super.key});

  final List<Map<String, dynamic>> settingsOptions = [
    {
      'title': 'Profile',
      'route': Profilescreen(),
      'icon': Icons.person_outline,
    },
    {
      'title': 'Wash history',
      'route': WashingHistoryScreen(),
      'icon': IconlyLight.calendar,
    },
    {
      'title': 'About us',
      'route': AboutScreen(),
      'icon': Icons.group_outlined,
    },
    {
      'title': 'Contact us',
      'route': Contactscreen(),
      'icon': Icons.bolt_outlined,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Column(
                children: [
                  Text(
                    "Settings",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: settingsOptions.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  settingsOptions[index]['route'],
                            ),
                          );
                        },
                        child: ListTile(
                          title: Text(
                            settingsOptions[index]['title'],
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          trailing: SizedBox(
                            width: 70, // Width set to fit both icons
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  settingsOptions[index]['icon'],
                                  size: 25,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 8), // Space between the icons
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.black,
                                  size: 18,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                },
              ),
            ),
            Container(
              height: 67,
              width: double.infinity,
              color: Color.fromRGBO(79, 154, 174, 1),
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "For any enquiry",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 13),
                    Text(
                      "+91 7592990849",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w200,
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 26),
          ],
        ),
      ),
    );
  }
}
