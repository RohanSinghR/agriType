import 'package:flutter/material.dart';

class PropertyDesc extends StatelessWidget {
  late String propertyDesc;
  PropertyDesc({required this.propertyDesc});
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          propertyDesc,
          style: const TextStyle(
              color: Color.fromARGB(220, 255, 255, 255), fontSize: 20),
        ),
      ),
    );
  }
}
