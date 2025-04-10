import 'package:flutter/material.dart';
import 'package:flutter_application_20/result.dart';
import 'package:flutter_application_20/splash.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashPage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _weight = TextEditingController();
  final _height = TextEditingController();
  final _age = TextEditingController();
  final _name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 241, 231, 183),
      body: Center(
        child: SizedBox(
          height: 700,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              elevation: 25,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.weightScale, size: 100),
                      SizedBox(width: 12),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 70,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(text: 'B'),
                            TextSpan(
                              text: 'MI',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Text("BMI Calculator", style: TextStyle(fontSize: 26)),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 330,
                    child: TextField(
                      controller: _name,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 330,
                    child: TextField(
                      controller: _age,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "Age",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 330,
                    child: TextField(
                      controller: _height,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "Height(in cm)",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 330,
                    child: TextField(
                      controller: _weight,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "Weight(in kg)",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 65),
                  ElevatedButton(
                    onPressed: () {
                      double? heightI = double.tryParse(_height.text);
                      double? weightI = double.tryParse(_weight.text);
                      double? resultF;
                      String nameF = _name.text;
                      if (heightI != null && weightI != null) {
                        heightI = heightI / 100;
                        resultF = weightI / (heightI * heightI);
                      }
                      _age.clear();
                      _height.clear();
                      _weight.clear();
                      _name.clear();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) =>
                                  ResultPage(result: resultF, name: nameF),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 32, 85, 128),
                      minimumSize: Size(320, 53),
                    ),
                    child: Text(
                      "Calculate",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
