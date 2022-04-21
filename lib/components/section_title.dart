import 'package:flutter/material.dart';

import '../constants.dart';

class SectionTitle extends StatelessWidget {
  SectionTitle({
    required this.title,
    required this.subTitle,
  });

  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      // constraints: BoxConstraints(maxWidth: 1110),
      // height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headline2!
                .copyWith(color: Colors.black, fontFamily: 'Highschool',),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            subTitle,
            style:
            TextStyle(
              fontFamily: 'Highschool',
                fontWeight: FontWeight.w400,
                color: kTextColor,
                fontSize: 20),
          ),
        ],
      )
    );
  }
}
