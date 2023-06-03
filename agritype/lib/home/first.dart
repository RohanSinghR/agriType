import 'package:flutter/material.dart';
import 'package:particles_flutter/particles_flutter.dart';
import '../loader/estimatorLoad.dart';

class First extends StatefulWidget {
  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  double opac0 = 0;
  double opac1 = 0;
  double opac2 = 0;
  double opac3 = 0;
  double opac4 = 0;
  double opac5 = 0;
  double opach = 0;
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 400), () {
      setState(() {
        opac0 = 1;
      });
    });
    Future.delayed(const Duration(milliseconds: 700), () {
      setState(() {
        opach = 1;
      });
    });
    Future.delayed(const Duration(milliseconds: 1000), () {
      setState(() {
        opac1 = 1;
      });
    });
    Future.delayed(const Duration(milliseconds: 1300), () {
      setState(() {
        opac2 = 1;
      });
    });
    Future.delayed(const Duration(milliseconds: 1600), () {
      setState(() {
        opac3 = 1;
      });
    });
    Future.delayed(const Duration(milliseconds: 1900), () {
      setState(() {
        opac4 = 1;
      });
    });
    Future.delayed(const Duration(milliseconds: 2200), () {
      setState(() {
        opac5 = 1;
      });
    });
    super.initState();
  }

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          AnimatedOpacity(
            duration: const Duration(milliseconds: 1000),
            opacity: opac0,
            child: CircularParticle(
              height: queryData.size.height,
              width: queryData.size.width,
              isRandomColor: false,
              isRandSize: true,
              particleColor: const Color.fromARGB(255, 202, 115, 8),
              numberOfParticles: 50,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                opacity: opach,
                duration: const Duration(milliseconds: 1000),
                child: const Text(
                  "Soil Estimator",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 202, 115, 8)),
                ),
              ),
              SizedBox(
                height: queryData.size.height / 15,
              ),
              AnimatedOpacity(
                  opacity: opac1,
                  duration: const Duration(milliseconds: 1000),
                  child: TextField(
                    cursorColor: const Color.fromARGB(255, 202, 115, 8),
                    controller: controller1,
                    maxLength: 5,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 202, 115, 8)),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Sand Fraction",
                      labelText: "Sand Fraction",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                              style: BorderStyle.solid,
                              color: Color.fromARGB(255, 202, 115, 8))),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 202, 115, 8))),
                    ),
                  )),
              AnimatedOpacity(
                  duration: const Duration(milliseconds: 1000),
                  opacity: opac2,
                  child: TextField(
                    cursorColor: const Color.fromARGB(255, 202, 115, 8),
                    controller: controller2,
                    maxLength: 5,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 202, 115, 8)),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Silt Fraction",
                      labelText: "Silt Fraction",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 202, 115, 8))),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 202, 115, 8))),
                    ),
                  )),
              AnimatedOpacity(
                  duration: const Duration(milliseconds: 1000),
                  opacity: opac3,
                  child: TextField(
                    cursorColor: const Color.fromARGB(255, 202, 115, 8),
                    controller: controller3,
                    maxLength: 5,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 202, 115, 8)),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Clay Fraction",
                      labelText: "Clay Fraction",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 202, 115, 8))),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 202, 115, 8))),
                    ),
                  )),
              SizedBox(
                height: queryData.size.height / 15,
              ),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 1000),
                opacity: opac4,
                child: const Text(
                    "Note : All the fields are necessary in order to proceed"),
              ),
              SizedBox(
                height: queryData.size.height / 45,
              ),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 1000),
                opacity: opac5,
                child: ElevatedButton.icon(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 202, 115, 8))),
                    label: const Text("Estimate"),
                    onPressed: () {
                      if (controller1.text.isEmpty ||
                          controller2.text.isEmpty ||
                          controller3.text.isEmpty) {
                        return;
                      } else {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EstimatorLoad(
                                      value1: double.parse(controller1.text),
                                      value2: double.parse(controller2.text),
                                      value3: double.parse(controller3.text),
                                    )));
                      }
                    },
                    icon: Icon(Icons.check)),
              )
            ],
          ),
        ],
      ),
    );
  }
}
