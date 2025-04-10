import 'package:flutter/material.dart';
import 'package:flutter_application_20/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return SplashState();
  }
}

class SplashState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 243, 218),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 200),
            Stack(
              children: [
                Transform.translate(
                  offset: Offset(130, 80),
                  child: CircleAvatar(radius: 4, backgroundColor: Colors.red),
                ),
                Transform.translate(
                  offset: Offset(160, 60),
                  child: CircleAvatar(radius: 6, backgroundColor: Colors.red),
                ),
                Transform.translate(
                  offset: Offset(180, 30),
                  child: CircleAvatar(radius: 8, backgroundColor: Colors.red),
                ),
                Transform.translate(
                  offset: Offset(195, -5),
                  child: CircleAvatar(radius: 10, backgroundColor: Colors.red),
                ),
                Transform.translate(
                  offset: Offset(185, -50),
                  child: CircleAvatar(radius: 12, backgroundColor: Colors.red),
                ),
                Transform.translate(
                  offset: Offset(-120, -65),
                  child: CircleAvatar(radius: 30, backgroundColor: Colors.red),
                ),
                Transform.translate(
                  offset: Offset(-95, -35),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.black,
                  ),
                ),
                Transform.translate(
                  offset: Offset(0, -40),
                  child: Icon(FontAwesomeIcons.b, size: 87),
                ),
                Transform.translate(
                  offset: Offset(75, -8),
                  child: Icon(FontAwesomeIcons.m, size: 50),
                ),
                Transform.translate(
                  offset: Offset(120, -8),
                  child: Icon(FontAwesomeIcons.i, size: 50),
                ),
              ],
            ),
            SizedBox(height: 100),
            SizedBox(
              height: 200,
              width: 360,
              child: Text(
                '"Knowing your BMI isn’t about chasing perfection — it’s about understanding where you stand, so you can take the first step toward better health."',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 60),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              child: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 50,
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
