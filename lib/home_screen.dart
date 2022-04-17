import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/sections/intro/intro_section.dart';
import 'package:web_app/sections/mainSection/main_section.dart';
import 'package:web_app/sections/topSection/top_section.dart';
import 'package:web_app/sections/roadmap/roadmap.dart';
import 'package:web_app/sections/team/teamsection.dart';
import 'package:web_app/Appbar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WackoAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            SizedBox(height: kDefaultPadding * 2),
            IntroSection(),
            SizedBox(height: kDefaultPadding * 2),
            MainSection(),
            SizedBox(height: kDefaultPadding * 2),
            RoadmapSection(),
            SizedBox(height: kDefaultPadding * 2),
            TeamSection(),
            SizedBox(height: kDefaultPadding * 3),
          ],
        ),
      ),
    );
  }
}
