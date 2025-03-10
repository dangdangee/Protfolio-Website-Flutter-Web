import 'package:flutter/material.dart';

class TeamSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width*0.95,
      decoration: BoxDecoration(
        color: Color(0xfffcf2f1),
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
              "TEAM",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'College',
                fontSize: 70,
                // fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    // padding: EdgeInsets.all(10),
                    height: size.width*0.3-10,
                    width: size.width*0.3-10,
                    alignment: Alignment.center,
                    // constraints: BoxConstraints(maxWidth: 400),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage("assets/images/Sohee.png"),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 30,
                    width: size.width*0.3-10,
                    child: Text(
                      "Sohee",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Highschool',
                        fontSize: 25,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 20,
                    width: size.width*0.3-10,
                    child: Text(
                      "Artist",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Highschool',
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 15,),
              Column(
                children: [
                  Container(
                    // padding: EdgeInsets.all(10),
                    height: size.width*0.3-10,
                    width: size.width*0.3-10,
                    alignment: Alignment.center,
                    // constraints: BoxConstraints(maxWidth: 400),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage("assets/images/Kiwi.png"),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 30,
                    width: size.width*0.3-10,
                    child: Text(
                      "Kiwi",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Highschool',
                        fontSize: 25,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 20,
                    width: size.width*0.3-10,
                    child: Text(
                      "Tech",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Highschool',
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 15,),
              Column(
                children: [
                  Container(
                    // padding: EdgeInsets.all(10),
                    height: size.width*0.3-10,
                    width: size.width*0.3-10,
                    alignment: Alignment.center,
                    // constraints: BoxConstraints(maxWidth: 400),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage("assets/images/Gun.png"),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 30,
                    width: size.width*0.3-10,
                    child: Text(
                      "Gun",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Highschool',
                        fontSize: 25,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 20,
                    width: size.width*0.3-10,
                    child: Text(
                      "Community",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Highschool',
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

        ],
      ),
    );
  }
}