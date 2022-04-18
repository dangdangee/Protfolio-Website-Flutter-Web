import 'package:flutter/material.dart';

import '../constants.dart';

class MyOutlineButton extends StatelessWidget {
  const MyOutlineButton({
    Key key,
    this.imageSrc,
    this.text,
    this.press,
  }) : super(key: key);

  final String imageSrc, text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.resolveWith((states) {
            return EdgeInsets.all(10);
          },),
          backgroundColor: MaterialStateProperty.resolveWith((states){
            if (states.contains(MaterialState.pressed)) {
              return Color(0xee0a1742);
            }
            return Color(0xff0a1742);
          },
          ),
        ),
        onPressed: press,
        child: Row(
          children: [
            Image.asset(
              imageSrc,
              height: 40,
            ),
            SizedBox(width: kDefaultPadding),
            Text(
              text,
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'Sandwich',
              ),
            )
          ],
        ),
      ),
    );
  }
}
