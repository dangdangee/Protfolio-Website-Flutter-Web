import 'package:flutter/material.dart';

import '../../../constants.dart';

class IntroSectionText extends StatelessWidget {
  const IntroSectionText({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Random',
          fontSize: 45,
          color: Colors.black,
        ),
      ),
    );
  }
}
