import 'package:flutter/material.dart';
import 'package:web_app/gallery.dart';
import 'package:web_app/artwork.dart';
import 'package:url_launcher/url_launcher.dart';

class WackoAppBar extends StatefulWidget implements PreferredSizeWidget {
  final Size preferredSize = Size.fromHeight(kToolbarHeight); // default is 56.0

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<WackoAppBar>{

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Widget> upperrightbar = [SizedBox(width: 10,),
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
          onPressed: () {
          Navigator.of(context).popUntil((route) => route.isFirst);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Gallery()),
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
          onPressed: () {
          Navigator.of(context).popUntil((route) => route.isFirst);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Artwork()),
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
    ];
    List<Widget> upperleftbar = [IconButton(
      onPressed: () async {
        const url = 'https://opensea.io/WackoUniversity';
        if (await canLaunch(url)){
          await launch(url);
        } else{
          throw 'Could not launch';
        }
      },
      icon: Image.asset(
        "assets/images/opensea_logo.png",
        fit: BoxFit.fitHeight,
      ),
    ),
    IconButton(
      onPressed: () async {
        const url = 'https://twitter.com/WackoUniv_NFT';
        if (await canLaunch(url)){
          await launch(url);
        } else{
          throw 'Could not launch';
        }
      },
      icon: Image.asset(
        "assets/images/twitter_logo.png",
        fit: BoxFit.fitHeight,
      ),
    ),
    IconButton(
      onPressed: () async {
        const url = 'https://instagram.com/wackounivnft/';
        if (await canLaunch(url)){
          await launch(url);
        } else{
          throw 'Could not launch';
        }
      },
      icon: Image.asset(
        "assets/images/insta_logo.png",
        fit: BoxFit.fitHeight,
      ),
    ),
    ];
    return AppBar(
      leadingWidth: 0,
      backgroundColor: Colors.white,
      // bottom:
      actions: [SizedBox(
        width: size.width,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: upperleftbar.length+upperrightbar.length+1,
          itemBuilder: (context, index) {
            return (index > upperrightbar.length)?
            upperleftbar[index-1-upperrightbar.length]:
            (index == upperrightbar.length)?
            SizedBox(width:size.width-360-130):
            upperrightbar[index];
          }
        )
      )],
    );
  }
}
