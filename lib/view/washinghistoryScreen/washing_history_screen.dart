import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WashingHistoryScreen extends StatelessWidget {
  const WashingHistoryScreen({super.key});

  final List<Map<String, String>> washingHistory = const [
    {
      "Hubname": "Kerala Hostel Kochi",
      "status": "Completed",
      "id": "#123456",
      "dateTime": "12/02/2024 10:20 am",
      "price": "125.00",
    },
    {
      "Hubname": "Trivandrum Hostel",
      "status": "Completed",
      "id": "#234567",
      "dateTime": "12/02/2024 11:45 am",
      "price": "135.50",
    },
    {
      "Hubname": "Kannur Hostel",
      "status": "Completed",
      "id": "#345678",
      "dateTime": "13/02/2024 09:30 am",
      "price": "140.75",
    },
    {
      "Hubname": "Calicut Laundry Hub",
      "status": "Completed",
      "id": "#456789",
      "dateTime": "13/02/2024 01:15 pm",
      "price": "150.00",
    },
    {
      "Hubname": "Thrissur Laundry Center",
      "status": "Completed",
      "id": "#567890",
      "dateTime": "14/02/2024 08:50 am",
      "price": "125.00",
    },
    {
      "Hubname": "Alleppey Hostel Service",
      "status": "Completed",
      "id": "#678901",
      "dateTime": "14/02/2024 10:00 am",
      "price": "115.25",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Column(
              children: [
                Text(
                  "History",
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 65),
                ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final item = washingHistory[index];
                    return Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color:
                            Colors.white, // White background for the container
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Hub Name",
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 14),
                                    Text(
                                      item["Hubname"]!,
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black.withOpacity(0.6),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Text(
                                      item["dateTime"]!,
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Machine ",
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 14),
                                    Text(
                                      item["id"]!,
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black.withOpacity(0.6),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 38,
                                      width: 148,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color.fromRGBO(96, 153, 117, 1),
                                      ),
                                      child: Center(
                                        child: Text(
                                          item["status"]!,
                                          style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 9),
                                    Text(
                                      "QK WASH",
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color:
                                              Color.fromRGBO(55, 137, 244, 1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      item["price"]!,
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(height: 28),
                  itemCount: washingHistory.length,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
