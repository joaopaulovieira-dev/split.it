import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:splitit/theme/app_theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initializeFirebase() async {
    try {
      await Firebase.initializeApp();
    } catch (e) {}
  }

  @override
  void initState() {
    initializeFirebase();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: AppTheme.gradients.backgraoud,
        ),
        child: SafeArea(
          top: true,
          bottom: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 66,
                  ),
                  Row(
                    children: [
                      Opacity(
                        opacity: 0.2,
                        child: Image.asset(
                          "assets/images/rectangle_right.png",
                          width: 198,
                          height: 98,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      Opacity(
                        opacity: 0.2,
                        child: Image.asset(
                          "assets/images/rectangle_right.png",
                          width: 114,
                          height: 54,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Image.asset(
                "assets/images/logo.png",
                width: 140,
                height: 122,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Opacity(
                        opacity: 0.2,
                        child: Image.asset(
                          "assets/images/rectangle_left.png",
                          width: 114,
                          height: 54,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Opacity(
                        opacity: 0.2,
                        child: Image.asset(
                          "assets/images/rectangle_left.png",
                          width: 198,
                          height: 98,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 66,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
