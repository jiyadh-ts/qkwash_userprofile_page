import 'package:flutter/material.dart';
import 'package:user_profile_page/view/login_page/login_page.dart';
import 'package:user_profile_page/view/login_page/terms%20of%20service/terms_of_service_page.dart';
import 'package:user_profile_page/view/otp_verification_page/otp_verification_page.dart';
import 'package:user_profile_page/view/settings_screen/settings_screen.dart';
import 'package:user_profile_page/view/washinghistoryScreen/Running_jobs_screen/Running_jobs_screen.dart';
import 'package:user_profile_page/view/washinghistoryScreen/washing_history_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SettingsScreen(),
    );
  }
}
