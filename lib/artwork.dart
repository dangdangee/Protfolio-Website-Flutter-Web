import 'package:flutter/material.dart';
import 'package:web_app/artworkAppbar.dart';
import 'utils.dart';
import 'dart:math';

class Artwork extends StatelessWidget {

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
            var total_items = file2url.keys.length;
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
                        shrinkWrap: true,
                        itemCount: (total_items / num_items).ceil(),
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
                                            itemCount: ((total_items / num_items).ceil() == (index+1))? (total_items%num_items):num_items,
                                            itemBuilder: (context, remainder) {
                                              return Padding(
                                                  padding: EdgeInsets.all(padding_size),
                                                  child:Image.network(file2url[(index * num_items + remainder).toString()]!) // index, remainder
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