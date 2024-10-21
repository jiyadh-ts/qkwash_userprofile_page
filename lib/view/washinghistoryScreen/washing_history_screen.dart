import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WashingHistoryScreen extends StatelessWidget {
  const WashingHistoryScreen({super.key});

  final List<Map<String, String>> washingHistory = const [
    {
      "washer": "Washer",
      "status": "Completed",
      "id": "01",
      "area": "KunnamKulam",
      "weight": "7",
    },
    {
      "washer": "Dryer ",
      "status": "Completed",
      "id": "01",
      "area": "KunnamKulam",
      "weight": "7",
    },
    {
      "washer": "Washer",
      "status": "Completed",
      "id": "01",
      "area": "KunnamKulam",
      "weight": "7",
    },
    {
      "washer": "Washer",
      "status": "Completed",
      "id": "01",
      "area": "KunnamKulam",
      "weight": "8",
    },
    {
      "washer": "Washer",
      "status": "Completed",
      "id": "01",
      "area": "KunnamKulam",
      "weight": "7",
    },
    {
      "washer": "Washer",
      "status": "Completed",
      "id": "01",
      "area": "KunnamKulam",
      "weight": "7",
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
                      height: 97,
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
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      item["washer"]!,
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
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
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
                                      "Location",
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
                                      item["area"]!,
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
                                      "(${item["weight"]!} kg)",
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color:
                                              Color.fromRGBO(55, 137, 244, 1),
                                        ),
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
