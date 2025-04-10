import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ResultPage extends StatefulWidget {
  final double? result;
  final String? name;
  const ResultPage({super.key, required this.result, this.name});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result Page"),
        backgroundColor: const Color.fromARGB(255, 241, 236, 212),
      ),
      body: SizedBox(
        height: 700,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
                width: 320,
                child: Stack(
                  children: [
                    Container(
                      height: 20,
                      width: 340,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.red,
                            Colors.orange,
                            Colors.green,
                            Colors.orange,
                            Colors.red,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Positioned(
                      left: ((widget.result ?? 0) / 45) * 340,
                      top: 20,
                      child: Icon(FontAwesomeIcons.upLong, size: 30),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                width: 340,
                child: Stack(
                  children: [
                    Text(
                      "${widget.name}'s result :",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Positioned(
                      bottom: 15,
                      right: 60,
                      child: Text(
                        "${widget.result?.toStringAsFixed(2) ?? '0.00'}",
                        style: TextStyle(
                          fontSize: 90,
                          color: const Color.fromARGB(255, 32, 85, 128),
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                width: 340,
                child: Stack(
                  children: [
                    Text(
                      "“Sorry, there’s no magic bullet. You gotta eat healthy and live healthy to be healthy and look healthy. End of story.” ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Positioned(
                      right: 10,
                      bottom: 40,
                      child: Text(
                        "– Morgan Spurlock",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
