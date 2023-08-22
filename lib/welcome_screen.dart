import 'package:flutter/material.dart';
import 'package:plant_app_ui/home_screen.dart';
import 'colors.dart';
import 'package:flutter_animate/flutter_animate.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: colors.whiteClr,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Plant a\ntree for life",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              wordSpacing: 1,
            ),
          )
              .animate()
              .fade(duration: const Duration(milliseconds: 600))
              .slideX(),
          Image.asset(
            "images/welcome.png",
            fit: BoxFit.cover,
            scale: 1.3,
          )
              .animate()
              .fadeIn(
                delay: Duration(milliseconds: 400),
              )
              .scale(),
          Text(
            "Worldwide delivery\nwithin 10-15 days",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          )
              .animate()
              .fade(duration: const Duration(milliseconds: 800))
              .slideX(),
          SizedBox(height: 60),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
            },
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: colors.grnClr,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    spreadRadius: 4,
                  ),
                ],
              ),
              child: Text(
                "Go",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ).animate(delay: const Duration(milliseconds: 500)).slideY(
                begin: 1,
                duration: const Duration(
                  milliseconds: 600,
                ),
                curve: Curves.fastLinearToSlowEaseIn,
              ),
        ],
      ),
    );
  }
}
