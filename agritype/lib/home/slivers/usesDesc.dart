import 'package:flutter/material.dart';

class UsesDesc extends StatelessWidget {
  late String usesDesc;
  UsesDesc({required this.usesDesc});
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          usesDesc,
          style: const TextStyle(
              color: Color.fromARGB(220, 255, 255, 255), fontSize: 20),
        ),
      ),
    );
  }
}
