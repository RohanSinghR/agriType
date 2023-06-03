import 'package:flutter/material.dart';

class Uses extends StatelessWidget {
  late String uses;
  Uses({required this.uses});
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          uses,
          style: const TextStyle(
              color: Color.fromARGB(220, 255, 255, 255),
              fontSize: 30,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
