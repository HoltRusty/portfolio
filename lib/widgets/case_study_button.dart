import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/my_mission_monetize.dart';
import 'package:my_portfolio/pages/pages.dart';
import 'package:my_portfolio/pages/zero_to_hero.dart';

class CaseStudyButton extends StatelessWidget {
  final String buttonText;
  final double width;
  final int index;

  final List<Widget> _screens = [
    StartupSuccess(),
    ZeroToHero(),
    MyMissionMonetize(),
  ];

  CaseStudyButton({
    required this.buttonText,
    required this.width,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.0, 1.0],
          colors: [
            Color.fromRGBO(122, 40, 255, 1),
            Color.fromRGBO(58, 40, 255, 1),
          ],
        ),
        color: Color.fromRGBO(122, 40, 255, 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          minimumSize: MaterialStateProperty.all(Size(width, 50)),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          // elevation: MaterialStateProperty.all(3),
          shadowColor: MaterialStateProperty.all(Colors.transparent),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => _screens[index],
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 10,
          ),
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 18,
              // fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
