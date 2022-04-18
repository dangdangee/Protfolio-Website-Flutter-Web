import 'package:flutter/material.dart';

class EventSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      width: size.width*0.95,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            width: 3,
            color: Colors.black,
          ),
          bottom: BorderSide(
            width: 3,
            color: Colors.black,
          ),
          left: BorderSide(
            width: 3,
            color: Colors.black,
          ),
          right: BorderSide(
            width: 3,
            color: Colors.black,
          ),
        ),
      ),
      padding: EdgeInsetsDirectional.only(
        start: 0,
        top: 15,
        bottom: 15,
        end: 0,
      ),
      child: Column(
        // alignment: WrapAlignment.spaceEvenly,
        // runAlignment: WrapAlignment.center,
        // crossAxisAlignment: WrapCrossAlignment.center,
        // direction: Axis.horizontal,
        children: [
          Container(
            width:size.width*0.9,
            // constraints: BoxConstraints(maxWidth: 800),
            child: Text(
              "Roadmap",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            // padding: EdgeInsets.all(10),
            height: 400,
            width: size.width*0.8,
            alignment: Alignment.center,
            // constraints: BoxConstraints(maxWidth: 400),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage("assets/images/event1.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}