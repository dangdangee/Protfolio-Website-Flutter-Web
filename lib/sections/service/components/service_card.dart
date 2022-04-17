import 'package:flutter/material.dart';
import 'package:web_app/models/Service.dart';

import '../../../constants.dart';

class ServiceCard extends StatefulWidget {
  const ServiceCard({
    Key key,
    this.index,
  }) : super(key: key);

  final int index;

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool isHover = false;
  Duration duration = Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: AnimatedContainer(
        duration: duration,
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 0),
        height: size.height/6,
        width: size.width/6,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              services[widget.index].image,
              // fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
