import 'package:flutter/material.dart';

class Smain extends StatelessWidget {
  late String header;
  Smain({required this.header});
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0, left: 8.0),
        child: Text(
          header,
          style: const TextStyle(
              color: Color.fromARGB(220, 255, 255, 255),
              fontSize: 30,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
