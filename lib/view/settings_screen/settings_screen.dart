import 'package:flutter/material.dart';
import 'package:user_profile_page/view/aboutscreen/about_screen.dart';
import 'package:user_profile_page/view/contactScreen/contactScreen.dart';
import 'package:user_profile_page/view/profileScreen/profileScreen.dart';
import 'package:user_profile_page/view/washinghistoryScreen/washing_history_screen.dart';
import 'package:google_fonts/google_fonts.dart';


class SettingsScreen extends StatelessWidget {
  SettingsScreen({super.key});

  final List<Map<String, dynamic>> settingsOptions = [
    {'title': 'Profile', 'route': Profilescreen()},
    {'title': 'Wash history', 'route': WashingHistoryScreen()},
    {'title': 'About us', 'route': AboutScreen()},
    {'title': 'Contact us', 'route': Contactscreen()},
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
                    style: GoogleFonts.montserrat(textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'montserrat',
                    ),)
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
                            style:GoogleFonts.montserrat(textStyle:  TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'montserrat',
                                color: Colors.black),
                          ),),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                            size: 18,
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
                        fontFamily: 'montserrat',
                        color: Colors.white,
                      ),),
                    ),
                    SizedBox(width: 13),
                    Text(
                      "+91 7592990849",
                      style: GoogleFonts.inter(
                     textStyle:  TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w200,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                      ),
                      )
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
