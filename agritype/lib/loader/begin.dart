import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:particles_flutter/particles_flutter.dart';

import '../home/first.dart';

class Begin extends StatefulWidget {
  @override
  State<Begin> createState() => _BeginState();
}

class _BeginState extends State<Begin> {
  double opac1 = 0;
  double opac2 = 0;
  double opac3 = 0;
  bool animator = false;
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 1000), () {
      setState(() {
        opac1 = 1;
      });
    });
    Future.delayed(Duration(milliseconds: 2500), () {
      setState(() {
        opac2 = 1;
      });
    });
    Future.delayed(Duration(milliseconds: 2500), () {
      setState(() {
        animator = true;
      });
    });
    Future.delayed(Duration(milliseconds: 4000), () {
      setState(() {
        opac3 = 1;
      });
    });
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Duration(milliseconds: 6000), () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => First()));
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    Widget Bg() {
      return AnimatedOpacity(
        opacity: opac1,
        duration: const Duration(milliseconds: 1000),
        child: CircularParticle(
          height: queryData.size.height,
          width: queryData.size.width,
          isRandomColor: false,
          particleColor: const Color.fromARGB(255, 202, 115, 8),
          numberOfParticles: 70,
          isRandSize: true,
          speedOfParticles: 1,
        ),
      );
    }

    Widget Img() {
      return AnimatedOpacity(
        opacity: opac2,
        duration: Duration(milliseconds: 1000),
        child: AnimatedContainer(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          duration: Duration(milliseconds: 1000),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(350),
            child: Image.network(
                "https://i.pinimg.com/564x/bd/64/4d/bd644d87bd642e5242e87e0b7fd54532.jpg"),
          ),
          height: animator ? 300 : 200,
          width: animator ? 300 : 200,
        ),
      );
    }

    Widget Progress() {
      return AnimatedOpacity(
        opacity: opac3,
        duration: const Duration(milliseconds: 800),
        child: const CircularProgressIndicator(
          color: Color.fromARGB(255, 202, 115, 8),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(children: [
        Bg(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Hero(tag: 'flower', child: Img())),
            SizedBox(
              height: queryData.size.height / 9,
            ),
            Progress()
          ],
        )
      ]),
    );
  }
}
