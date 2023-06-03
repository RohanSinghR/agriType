import 'package:flutter/material.dart';

class Desc extends StatelessWidget {
  late String desc;
  Desc({required this.desc});
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          desc,
          style: const TextStyle(
              color: Color.fromARGB(220, 255, 255, 255), fontSize: 20),
        ),
      ),
    );
  }
}
