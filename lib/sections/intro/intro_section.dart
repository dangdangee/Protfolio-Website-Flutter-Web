import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app/components/my_outline_button.dart';
import 'package:web_app/constants.dart';
import 'components/intro_section_text.dart';

class IntroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width*0.95,
      decoration: BoxDecoration(
        color: Color(0xfff5d042),
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
      padding: EdgeInsets.all(20),
      // constraints: BoxConstraints(maxWidth: 1200),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // AboutTextWithSign(),
              Expanded(
                child: IntroSectionText(
                  text:
                      "A collection of 5555 NFTs for Wackos around the world",
                ),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlineButton(
                imageSrc: "assets/images/opensea_logo.png",
                text: "Be Wacky on OPENSEA",
                press: () async {
                  const url = 'https://opensea.io/WackoUniversity';
                  if (await canLaunch(url)){
                    await launch(url);
                  } else{
                    throw 'Could not launch';
                  }
                  // print(size.width);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
