import 'package:flutter/material.dart';
import 'package:seawind_ui_project/Screen/region_screen.dart';
import 'package:seawind_ui_project/utils/decoration.dart';

import '../Widget/GlobalMyShow.dart';
import '../utils/color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _fadeAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );

    _startAnimationWithNavigation();
  }

  void _startAnimationWithNavigation() {
    _animationController.forward();
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Region_screen(),
          ),
        );
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FadeTransition(
      opacity: _fadeAnimation,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 253, 241, 255),
              Color.fromARGB(255, 249, 220, 248),
              Color.fromARGB(255, 249, 220, 248),
              Color(0xFFFFE6F2),
              Color.fromARGB(255, 251, 181, 216),
            ],
            begin: Alignment.topLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'LOV',
                style: boldTextStyle(fontSize: 50),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 5.0,
                      ),
                      width: 30,
                      height: 8,
                      decoration: BoxDecoration(
                        color: mainColour,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 5.0),
                      width: 30,
                      height: 8,
                      decoration: BoxDecoration(
                        color: mainColour,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 8,
                      decoration: BoxDecoration(
                        color: mainColour,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ],
                ),
              ),
              ClipPath(
                clipper: TicketClipper(),
                child: Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    gradient: LinearGradient(
                      colors: [Colors.pink.shade300, Colors.pink.shade700],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "MY SHOW",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
