import 'package:flutter/material.dart';

class Properties extends StatelessWidget {
  late String property;
  Properties({required this.property});
  @override
  Widget build(BuildContext) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          property,
          style: const TextStyle(
              color: Color.fromARGB(220, 255, 255, 255),
              fontSize: 30,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
