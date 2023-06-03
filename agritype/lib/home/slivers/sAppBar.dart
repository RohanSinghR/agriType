import 'package:flutter/material.dart';

class SAppBar extends StatelessWidget {
  late String image;
  late String imageText;
  SAppBar({required this.image, required this.imageText});
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: const Color.fromARGB(255, 202, 115, 8),
      foregroundColor: Colors.black,
      pinned: true,
      expandedHeight: 240,
      flexibleSpace: FlexibleSpaceBar(
          titlePadding: EdgeInsets.all(15),
          background: Image.network(
            image,
            fit: BoxFit.fill,
          ),
          title: Text(
            imageText,
            style: TextStyle(color: Colors.white70),
          )),
    );
  }
}
