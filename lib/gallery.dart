import 'package:flutter/material.dart';
import 'package:web_app/galleryAppbar.dart';

class Gallery extends StatelessWidget {
  const Gallery({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GalReturnAppBar(),
      body: Center(
        child: Text(
          "on progress"
        ),
      ),
    );
  }
}