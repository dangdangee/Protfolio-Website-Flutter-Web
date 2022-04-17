import 'package:flutter/material.dart';

class ArtReturnAppBar extends StatefulWidget implements PreferredSizeWidget {
  ArtReturnAppBar({Key key}) : preferredSize = Size.fromHeight(kToolbarHeight), super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<ArtReturnAppBar>{

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AppBar(
      leadingWidth: 130,
      backgroundColor: Colors.white,
      title: Text(
        "Artwork",
        style: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
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
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text(
                "Home",
                style: TextStyle(
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
