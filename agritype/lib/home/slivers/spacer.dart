import 'package:flutter/material.dart';

class SpacerProvide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 30,
      ),
    );
  }
}
