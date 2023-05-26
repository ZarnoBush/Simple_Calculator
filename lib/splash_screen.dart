import 'package:calculator/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(
      Duration(milliseconds: 3000),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Calculator(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'from',
              style: TextStyle(color: Colors.white.withOpacity(0.7)),
            ),
            Text.rich(
              TextSpan(
                  text: 'Ay',
                  style: TextStyle(color: Colors.amber, fontSize: 48),
                  children: [
                    TextSpan(
                      text: 'Zapp',
                      style: TextStyle(color: Colors.green, fontSize: 48),
                    ),
                    TextSpan(
                      text: '.com',
                      style: TextStyle(color: Colors.blue, fontSize: 16),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
