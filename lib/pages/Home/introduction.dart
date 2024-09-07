import 'package:flutter/material.dart';
import 'package:portfolio/components/photo.dart';
import '../../components/intro.dart';
import '../../components/aboutme.dart';

class HomeIntro extends StatelessWidget {
  const HomeIntro({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile =
        MediaQuery.of(context).size.height > MediaQuery.of(context).size.width;
    double height = 1098;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: isMobile ? 1098 * 1.2 : 1098,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFF03045e),
            Color(0xFF0077b6),
            Color(0xFF00b4d8),
            Color(0xFF90e0ef),
            Color(0xFFcaf0f8),
          ],
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(color: Colors.black, offset: Offset(0.0, 0))
        ],
      ),
      child: Stack(
        children: [
          if (!isMobile)
            const Photo(size: 400, margin: EdgeInsets.only(left: 50, top: 150)),
          if (isMobile)
            const Photo(size: 300, margin: EdgeInsets.only(left: 75, top: 75)),
          Intro(height: height, isMobile: isMobile),
          Positioned(
            left: 0,
            right: 0,
            child: AboutMe(height: height, isMobile: isMobile),
          ),
        ],
      ),
    );
  }
}
