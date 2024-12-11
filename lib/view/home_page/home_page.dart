import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:user_profile_page/constraints/image_constraints.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, String>> RunningJobs = const [
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
  ];
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
  ];

  bool showAllRunningJobs = false;
  bool showAllHistory = false;
  bool notification = true;
  bool gift = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 37),
              Row(
                children: [
                  Text(
                    "QK WASH",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(32, 117, 243, 1),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Stack(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(IconlyLight.notification),
                      ),
                      if (notification) 
                        Positioned(
                          right: 0, 
                          top: 0, 
                          child: Container(
                            height: 8, 
                            width: 8, 
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(32, 117, 243, 1),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(width: 15),
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 35,
                          width: 25,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(ImageConstraints.presentimage),
                            ),
                          ),
                        ),
                      ),
                      if (gift) 
                        Positioned(
                          right: 0, 
                          top: 0, 
                          child: Container(
                            height: 8, 
                            width: 8, 
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(32, 117, 243, 1),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 80),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(ImageConstraints.home_page_video_image),
                      fit: BoxFit.cover),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Running Jobs",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  if (!showAllRunningJobs && index >= 1)
                    return const SizedBox();
                  return _buildRunningJobCard(RunningJobs[index]);
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 28),
                itemCount: RunningJobs.length,
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    showAllRunningJobs = !showAllRunningJobs;
                  });
                },
                child: Text(
                  showAllRunningJobs ? "Show Less" : "Show More",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(32, 117, 243, 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "History",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  if (!showAllHistory && index >= 1) return const SizedBox();
                  return _buildHistoryCard(washingHistory[index]);
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 28),
                itemCount: washingHistory.length,
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    showAllHistory = !showAllHistory;
                  });
                },
                child: Text(
                  showAllHistory ? "Show Less" : "Show More",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(32, 117, 243, 1),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRunningJobCard(Map<String, String> item) {
    final status = item["status"]!;
    final percentage = double.parse(item["percentage"]!) / 100;
    final statusColor =
        status == "Running" ? const Color(0xFF3789F4) : Colors.red;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                            color: Colors.black.withOpacity(0.6),
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
  }

  Widget _buildHistoryCard(Map<String, String> item) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white, // White background for the container
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
                          color: Color.fromRGBO(55, 137, 244, 1),
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
  }
}
