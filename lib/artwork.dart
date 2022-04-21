import 'package:flutter/material.dart';
import 'package:web_app/artworkAppbar.dart';
import 'utils.dart';
import 'dart:math';

class Artwork extends StatefulWidget {
  @override
  _ArtworkState createState() => _ArtworkState();
}

class _ArtworkState extends State<Artwork> with ChangeNotifier {
  ScrollController? controller;

  @override
  void initState() {
    super.initState();
    controller = ScrollController()..addListener(_onScrollUpdated);
  }

  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  double print_items = 25;
  Future<void> _onScrollUpdated() async {
    var maxScroll = controller!.position.maxScrollExtent;
    var currentPosition = controller!.position.pixels;
    if (currentPosition == maxScroll) {
      print_items += 15;
    }
  }

  @override
  Widget build(BuildContext context) {
    int media_width = MediaQuery.of(context).size.width as int;
    int media_height = MediaQuery.of(context).size.height as int;
    return FutureBuilder(
        future: listFileUrls("Artwork"),
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
              appBar: ArtReturnAppBar(),
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
                                            itemCount: num_items, //((total_items / num_items).ceil() == (index+1))? (total_items%num_items):num_items,
                                            itemBuilder: (context, remainder) {
                                              return Padding(
                                                  padding: EdgeInsets.all(padding_size),
                                                  child:
                                                  ((([print_items,total_items].reduce(min)/num_items).ceil() == (index+1))&&(remainder>=([print_items,total_items].reduce(min)%num_items))&&([print_items,total_items].reduce(min)%num_items!=0))?
                                                  Container(width:media_width / (num_items + 1),
                                                      height:media_width / (num_items + 1), child:SizedBox())
                                                  :Container(width:media_width / (num_items + 1),
                                                    height:media_width / (num_items + 1), child:Image.network(file2url[file2url.keys.elementAt((index * num_items + remainder))]!)) // index, remainder
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

/*
Container(width:media_width / (num_items + 1),
                                                    height:media_width / (num_items + 1), child:SvgPicture.network(
                                                    file2url[file2url.keys.elementAt((index * num_items + remainder))]!,
                                                    placeholderBuilder: (BuildContext context) => Container(
                                                        padding: EdgeInsets.all(media_width / (num_items + 1) / 3),
                                                        child: const CircularProgressIndicator()),
                                                  ),),
 */