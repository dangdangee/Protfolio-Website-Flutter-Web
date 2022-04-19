import 'package:flutter/material.dart';
import 'package:web_app/gallery.dart';
import 'package:web_app/artwork.dart';
import 'package:url_launcher/url_launcher.dart';

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
          onPressed: () async {
            const url = 'https://opensea.io/WackoUniversity';
            if (await canLaunch(url)){
              await launch(url);
            } else{
              throw 'Could not launch';
            }
            // print(size.width);
          },
          icon: Image.asset(
            "assets/images/opensea_logo.png",
            fit: BoxFit.fill,
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
            // print(size.width);
          },
          icon: Image.asset(
            "assets/images/twitter_logo.png",
            fit: BoxFit.fill,
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
            // print(size.width);
          },
          icon: Image.asset(
            "assets/images/insta_logo.png",
            fit: BoxFit.fill,
          ),
        ),
      ],
      leading: Wrap(
        direction: Axis.horizontal,
        runAlignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
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
