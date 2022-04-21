import 'package:flutter/material.dart';
import 'package:web_app/galleryAppbar.dart';
import 'utils.dart';
import 'dart:math';

class Gallery extends StatefulWidget {
  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> with ChangeNotifier {
  ScrollController? controller;
  double print_items = 25;

  @override
  void initState() {
    super.initState();
    controller = ScrollController()..addListener(_onScrollUpdated);
  }

  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  Future<void> _onScrollUpdated() async {
    var maxScroll = controller!.position.maxScrollExtent;
    var currentPosition = controller!.position.pixels;
    if (currentPosition == maxScroll) {
      setState((){print_items += 15;});
    }
  }

  @override
  Widget build(BuildContext context) {
    int media_width = MediaQuery.of(context).size.width as int;
    int media_height = MediaQuery.of(context).size.height as int;
    return FutureBuilder(
      future: listFileUrls("Gallery"),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData == false) {
          return const Center(child: CircularProgressIndicator());
        }

        else if (snapshot.hasError) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Error: ${snapshot.error}',
              style: TextStyle(fontSize: 15),
            ),
          );
        }

        else {
          Map<String, String> file2url = snapshot.data! as Map<String, String>;
          var total_items = file2url.keys.length.toDouble();
          const num_items = 5;

          var padding_size = media_width / 2 / pow(num_items + 1,2);
          return Scaffold(
            appBar: GalReturnAppBar(),
            body: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(padding_size),
              decoration: BoxDecoration(
                image: DecorationImage(
                  opacity: 0.2,
                  image: AssetImage("assets/images/Logo.png"),
                  fit: (media_width>media_height)? BoxFit.fitHeight:BoxFit.fitWidth,
                ),
              ),
              child: Center(
                child: Column(
                  children: [
                    Expanded(child: ListView.builder(
                      controller: controller,
                      shrinkWrap: true,
                      itemCount: ([print_items,total_items].reduce(min)/num_items).ceil(),
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            SizedBox(
                              height: media_width / (num_items + 1) + padding_size*2,
                              width: (media_width-padding_size*2).toDouble(),
                              child: Center(
                                child:ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemCount: num_items,
                                  itemBuilder: (context, remainder) {
                                    return Padding(
                                      padding: EdgeInsets.all(padding_size),
                                      child:
                                      ((([print_items,total_items].reduce(min)/num_items).ceil() == (index+1))&&(remainder>=([print_items,total_items].reduce(min)%num_items))&&([print_items,total_items].reduce(min)%num_items!=0))?
                                      Container(width:media_width / (num_items + 1),
                                        height:media_width / (num_items + 1), child:SizedBox())
                                      :Image.network(file2url[file2url.keys.elementAt((index * num_items + remainder))]!) // index, remainder
                                    );
                                  }
                                )
                              )
                            )
                          ]
                        );
                      },
                    ))
                  ],
                ),
              ),
            ),
          );
        }
      }
    );
  }
}