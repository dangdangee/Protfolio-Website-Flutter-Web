import 'package:flutter/material.dart';
import 'package:web_app/components/section_title.dart';

class MainSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width*0.95,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
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
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        runAlignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        direction: Axis.horizontal,
        children: [
          Container(
            width: (size.width<1000) ? size.width*0.85 : size.width*0.55,
            // constraints: BoxConstraints(maxWidth: 800),
            child: Column(
              children: [
                SectionTitle(
                  // color: Color(0xFFFF0000),
                  title: "Welcome To The Wacko University",
                  subTitle: "\nWacko University is a collection of 5000 Wacko NFTs-unique collectibles based on Solana. "
                      "Wackos usually have wacky eyes which shows the value we prefer. "
                      "We are seeking weird but chilling, dope people who can give joy to the world.\n\n"
                      "We want to gather Wackos around the world to build a cheery (possibly cheeky) community.",
                ),
              ],
            ),
          ),
          Container(
            // padding: EdgeInsets.all(10),
            height: 400,
            width: 400,
            alignment: Alignment.center,
            // constraints: BoxConstraints(maxWidth: 400),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/WanChu.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}