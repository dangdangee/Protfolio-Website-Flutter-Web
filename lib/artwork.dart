import 'package:flutter/material.dart';
import 'package:web_app/artworkAppbar.dart';

class Artwork extends StatelessWidget {
  const Artwork({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ArtReturnAppBar(),
      body: Center(
        child: Text(
            "on progress"
        ),
      ),
    );
  }
}