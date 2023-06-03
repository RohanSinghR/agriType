import "package:flutter/material.dart";
import "loader/begin.dart";

void main() => runApp(Agri());

class Agri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Begin(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
    );
  }
}
