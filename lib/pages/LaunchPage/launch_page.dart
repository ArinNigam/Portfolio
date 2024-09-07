import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../providers/launch_page_animation.dart';

class LaunchPage extends StatelessWidget {
  const LaunchPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = 1978;
    bool isMobile =
        MediaQuery.of(context).size.height > MediaQuery.of(context).size.width;

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<LaunchPageProvider>(context, listen: false).startAnimation();
    });

    return ResponsiveScaledBox(
      width: 1978,
      child: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Hello! My name is Arin',
                              style: GoogleFonts.anekBangla(
                                fontSize: isMobile ? width / 20 : width / 33,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: AnimatedTextKit(
                                repeatForever: true,
                                animatedTexts: [
                                  TyperAnimatedText(
                                    "...",
                                    textStyle: TextStyle(
                                        fontSize:
                                            isMobile ? width / 20 : width / 33,
                                        fontFamily: 'Arial'),
                                    speed: const Duration(milliseconds: 500),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'I do ',
                                style: GoogleFonts.anekBangla(
                                  fontSize: isMobile ? width / 25 : width / 40,
                                ),
                              ),
                              Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  AnimatedTextKit(
                                    onFinished: () {
                                      Provider.of<LaunchPageProvider>(context,
                                              listen: false)
                                          .incrementVisitorCount();
                                      context.go('/home');
                                    },
                                    repeatForever: false,
                                    isRepeatingAnimation: false,
                                    animatedTexts: [
                                      RotateAnimatedText(
                                        'Coding',
                                        textStyle: GoogleFonts.anekBangla(
                                          fontSize: isMobile
                                              ? width / 25
                                              : width / 40,
                                        ),
                                        transitionHeight: 100,
                                      ),
                                      RotateAnimatedText('Development',
                                          textStyle: GoogleFonts.anekBangla(
                                            fontSize: isMobile
                                                ? width / 25
                                                : width / 40,
                                          ),
                                          transitionHeight: 100),
                                      RotateAnimatedText('both!',
                                          rotateOut: false,
                                          textStyle: GoogleFonts.anekBangla(
                                            fontSize: isMobile
                                                ? width / 25
                                                : width / 40,
                                          ),
                                          transitionHeight: 100,
                                          duration: const Duration(
                                              milliseconds: 500)),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            if (!isMobile)
              Expanded(
                child: Container(
                  color: Colors.white,
                  width: width / 2,
                  height: double.infinity,
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    height: 500,
                    child: Lottie.asset('lib/assets/images/animation.json'),
                  ),
                ),
              )
            else
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Align(
                    alignment: Alignment.center,
                    child: Consumer<LaunchPageProvider>(
                      builder: (_, animationProvider, __) {
                        return CircularPercentIndicator(
                          addAutomaticKeepAlive: true,
                          radius: 60,
                          animation: true,
                          animationDuration: 1000,
                          lineWidth: 10,
                          animateFromLastPercent: true,
                          percent: animationProvider.percent,
                          circularStrokeCap: CircularStrokeCap.butt,
                          progressColor: Colors.blue,
                        );
                      },
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
