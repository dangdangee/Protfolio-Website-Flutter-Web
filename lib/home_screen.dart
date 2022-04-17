import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/sections/about/about_section.dart';
import 'package:web_app/sections/service/service_section.dart';
import 'package:web_app/sections/topSection/top_section.dart';
import 'package:web_app/sections/roadmap/roadmap.dart';
import 'package:web_app/sections/team/teamsection.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Logo.png"),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            SizedBox(height: kDefaultPadding * 2),
            AboutSection(),
            SizedBox(height: kDefaultPadding * 2),
            ServiceSection(),
            SizedBox(height: kDefaultPadding * 2),
            RoadmapSection(),
            SizedBox(height: kDefaultPadding * 2),
            TeamSection(),
            SizedBox(height: kDefaultPadding * 4),
            // ServiceSection(),
            // RecentWorkSection(),
            // FeedbackSection(),
            // SizedBox(height: kDefaultPadding*2),
            // ContactSection(),
            // This SizeBox just for demo
            // SizedBox(
            //   height: 500,
            // )
          ],
        ),
      ),
    );
  }
}
