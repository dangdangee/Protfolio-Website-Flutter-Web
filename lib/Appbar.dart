import 'package:flutter/material.dart';
import 'package:web_app/gallery.dart';
import 'package:web_app/artwork.dart';

class WackoAppBar extends StatefulWidget implements PreferredSizeWidget {
  WackoAppBar({Key key}) : preferredSize = Size.fromHeight(kToolbarHeight), super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<WackoAppBar>{

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AppBar(
      leadingWidth: 350,
      backgroundColor: Colors.white,
      // bottom:
      actions: [
        IconButton(
          onPressed: ()=>{print('opensea')},
          icon: Image.asset(
            "assets/images/opensea_logo.png",
            fit: BoxFit.fill,
          ),
        ),
        IconButton(
          onPressed: ()=>{print('twitter')},
          icon: Image.asset(
            "assets/images/twitter_logo.png",
            fit: BoxFit.fill,
          ),
        ),
        IconButton(
          onPressed: ()=>{print('instagram')},
          icon: Image.asset(
            "assets/images/insta_logo.png",
            fit: BoxFit.fill,
          ),
        ),
      ],
      leading: Wrap(
        direction: Axis.horizontal,
        crossAxisAlignment: WrapCrossAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Logo.png"),
              ),
            ),
          ),
          SizedBox(width: 10,),
          Container(
            width: 70,
            height: 50,
            child: TextButton(
              onPressed: (){},
              child: Text(
                "Home",
                style: TextStyle(
                  fontFamily: 'Highschool',
                  color: Colors.black,
                  fontSize: 20
                ),
              ),
            ),
          ),
          SizedBox(width: 10,),
          Container(
            width: 100,
            height: 50,
            child: TextButton(
              onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Gallery()),
              );},
              child: Text(
                "Gallery",
                style: TextStyle(
                    fontFamily: 'Highschool',
                    color: Colors.black,
                    fontSize: 20
                ),
              ),
            ),
          ),
          SizedBox(width: 10,),
          Container(
            width: 100,
            height: 50,
            child: TextButton(
              onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Artwork()),
              );},
              child: Text(
                "Artwork",
                style: TextStyle(
                    fontFamily: 'Highschool',
                    color: Colors.black,
                    fontSize: 20
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
