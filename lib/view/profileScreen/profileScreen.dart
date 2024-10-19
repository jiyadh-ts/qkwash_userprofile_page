import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';

class Profilescreen extends StatefulWidget {
  Profilescreen({super.key});

  @override
  _ProfilescreenState createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  final List<Map<String, dynamic>> profileData = [
    {'title': 'User ID', 'value': '#123456'},
    {'title': 'Name', 'value': 'Akhil V A'},
    {'title': 'Washes', 'value': '40'},
    {'title': 'Mobile No', 'value': '+91 1234 567 890'},
    {'title': 'Notification', 'value': false},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 75,
                    backgroundImage: NetworkImage(
                        "https://s3-alpha-sig.figma.com/img/1b73/04b2/85d08c0f8b29f8fc61ad6621680532e7?Expires=1730073600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=nbjd4Kdf6S-ArNq9IeMcjN-5I4UgCuGaUsgq3Qv4csAY9JVQXaJCIh8qkSVoczAzRekk8ZWeL23UPHK1~2e3xR5WH7RIyGVwsgVmGJTQgT7rkVrJFwL58zTVyF6k3Si5PPk~bl5m8qoizOegFW6lx13sNc9Ojgbn4QeMNdABbbNUrw7Cy2NXEFaV44qmJAxm83F8Up~W9PJJP9M0pw54inFbHSvPsHnc2HZSq75JDPNhzOUCgPdMlnqe8EdS-0en1hOWB8k5-YXvjdieDpdFeikB5JyQAGjcazkL6Garem0db1M86qTvnEKs4ha75OYDr2bFU23uiPAs3Gut9yBXqg__"),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 10,
                    child: CircleAvatar(
                      radius: 12.5,
                      backgroundColor: Colors.blue,
                      child: Icon(
                        IconlyLight.camera,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    // toggle button
                    if (profileData[index]["title"] == 'Notification') {
                      return Row(
                        children: [
                          SizedBox(
                            width: 200,
                            child: Text(
                              profileData[index]["title"],
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'montserrat',
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Text(
                                  profileData[index]["value"] ? "On" : "Off",
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'montserrat',
                                        color: Colors.black),
                                  ),
                                ),
                                SizedBox(width: 10),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      profileData[index]["value"] =
                                          !profileData[index]["value"];
                                    });
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 200),
                                    width: 40,
                                    height: 22,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: profileData[index]["value"]
                                          ? Colors.blue
                                          : Colors.grey,
                                    ),
                                    child: Align(
                                      alignment: profileData[index]["value"]
                                          ? Alignment.centerRight
                                          : Alignment.centerLeft,
                                      child: Container(
                                        width: 16,
                                        height: 16,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 1.5),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    } else {
                      return Row(
                        children: [
                          SizedBox(
                            width: 200,
                            child: Text(
                              profileData[index]["title"],
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'montserrat',
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              profileData[index]["value"].toString(),
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'montserrat',
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      );
                    }
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    height: 20,
                  ),
                  itemCount: profileData.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
