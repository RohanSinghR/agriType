import 'package:flutter/material.dart';

class Composition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(top: 15.0, left: 8.0),
        child: Text(
          "Composition entered categorizes the soil as ",
          style: TextStyle(
              color: Color.fromARGB(220, 255, 255, 255),
              fontSize: 25,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
