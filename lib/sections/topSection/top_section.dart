import 'dart:ui';

import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      alignment: Alignment.center,
      // height: 500,
      constraints: BoxConstraints(maxHeight: size.width*300/475, minHeight: 0),
      width: double.infinity,
      decoration: BoxDecoration(
        // color: Color(0xff7becbb),
        image: DecorationImage(
          fit: BoxFit.fitWidth,
          image: AssetImage("assets/images/event1.png"),
        ),
      ),
    );
  }
}
