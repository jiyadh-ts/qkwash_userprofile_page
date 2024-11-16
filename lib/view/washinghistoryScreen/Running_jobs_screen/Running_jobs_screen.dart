import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class RunningjobScreen extends StatelessWidget {
  const RunningjobScreen({super.key});

  final List<Map<String, String>> washingHistory = const [
    {
      "Hubname": "Kerala Hostel Kochi",
      "status": "Running",
      "id": "#123456",
      "percentage": "48",
    },
    {
      "Hubname": "Trivandrum Hostel",
      "status": "Stopped",
      "id": "#234567",
      "percentage": "75",
    },
    {
      "Hubname": "Kannur Hostel",
      "status": "Running",
      "id": "#345678",
      "percentage": "60",
    },
    {
      "Hubname": "Calicut Laundry Hub",
      "status": "Stopped",
      "id": "#456789",
      "percentage": "90",
    },
    {
      "Hubname": "Thrissur Laundry Center",
      "status": "Running",
      "id": "#567890",
      "percentage": "30",
    },
    {
      "Hubname": "Alleppey Hostel Service",
      "status": "Stopped",
      "id": "#678901",
      "percentage": "90",
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
                  "Running jobs",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final item = washingHistory[index];
                    final status = item["status"]!;
                    final percentage = double.parse(item["percentage"]!) / 100;
                    final statusColor = status == "Running"
                        ? const Color(0xFF3789F4)
                        : Colors.red;

                    return Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Hub Name",
                                        style: GoogleFonts.montserrat(
                                          textStyle: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 14),
                                      Text(
                                        item["Hubname"]!,
                                        style: GoogleFonts.montserrat(
                                          textStyle: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Colors.black.withOpacity(0.6),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 25),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Machine ",
                                      style: GoogleFonts.montserrat(
                                        textStyle: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 14),
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
                              ],
                            ),
                            Text(
                              "Status",
                              style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "$status (${item["percentage"]}% completed)",
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: statusColor,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 4.0), // Slight space adjustment
                                    child: LinearPercentIndicator(
                                      lineHeight: 4.0,
                                      percent: percentage,
                                      backgroundColor: Colors.grey[300],
                                      progressColor: statusColor,
                                      barRadius: const Radius.circular(10),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 28),
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
