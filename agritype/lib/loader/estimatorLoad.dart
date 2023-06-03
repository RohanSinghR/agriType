import 'package:agritype/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class EstimatorLoad extends StatefulWidget {
  late double value1;
  late double value2;
  late double value3;
  EstimatorLoad(
      {required this.value1, required this.value2, required this.value3});
  @override
  State<EstimatorLoad> createState() => _EstimatorLoadState();
}

class _EstimatorLoadState extends State<EstimatorLoad> {
  bool one = false;
  bool two = false;
  bool three = false;
  bool four = false;
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        one = true;
      });
    });
    Future.delayed(const Duration(milliseconds: 600), () {
      setState(() {
        two = true;
      });
    });
    Future.delayed(const Duration(milliseconds: 900), () {
      setState(() {
        three = true;
      });
    });
    Future.delayed(const Duration(milliseconds: 1200), () {
      setState(() {
        four = true;
      });
    });
    Future.delayed(const Duration(milliseconds: 1500), () {
      setState(() {
        one = false;
      });
    });
    Future.delayed(const Duration(milliseconds: 1800), () {
      setState(() {
        two = false;
      });
    });
    Future.delayed(const Duration(milliseconds: 2100), () {
      setState(() {
        three = false;
      });
    });
    Future.delayed(const Duration(milliseconds: 2400), () {
      setState(() {
        four = false;
      });
    });
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 3000), () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => Home(
                    value1: widget.value1,
                    value2: widget.value2,
                    value3: widget.value3)));
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Widget boxer() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: const Color.fromARGB(255, 202, 115, 8)),
      height: MediaQuery.of(context).size.height / 50,
      width: MediaQuery.of(context).size.width / 20,
    );
  }

  @override
  Widget build(BuildContext) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height / 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedAlign(
                alignment: one ? Alignment.bottomCenter : Alignment.topCenter,
                duration: const Duration(milliseconds: 500),
                child: boxer(),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 30,
              ),
              AnimatedAlign(
                alignment: two ? Alignment.bottomCenter : Alignment.topCenter,
                duration: const Duration(milliseconds: 500),
                child: boxer(),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 30,
              ),
              AnimatedAlign(
                alignment: three ? Alignment.bottomCenter : Alignment.topCenter,
                duration: const Duration(milliseconds: 500),
                child: boxer(),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 30,
              ),
              AnimatedAlign(
                alignment: four ? Alignment.bottomCenter : Alignment.topCenter,
                duration: const Duration(milliseconds: 500),
                child: boxer(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
