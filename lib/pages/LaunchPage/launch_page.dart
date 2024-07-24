import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../providers/launch_page_animation.dart';

class LaunchPage extends StatelessWidget {
  const LaunchPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = 1978;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<LaunchPageProvider>(context, listen: false).startAnimation();
    });
    Future<void> loadLottieAnimation() async {
      await Future.delayed(const Duration(seconds: 2));
    }

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
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(color: Colors.white),
                          ),
                          Expanded(
                            flex: 4,
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Row(
                                children: [
                                  AutoSizeText(
                                    'Hello! My name is Arin',
                                    style: GoogleFonts.gochiHand(
                                      fontSize: width / 33,
                                    ),
                                    minFontSize: 15,
                                  ),
                                  AnimatedTextKit(
                                    repeatForever: true,
                                    animatedTexts: [
                                      TyperAnimatedText(
                                        "...",
                                        textStyle: TextStyle(
                                            fontSize: width / 33,
                                            fontFamily: 'Arial'),
                                        speed:
                                            const Duration(milliseconds: 500),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(color: Colors.white),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  color: Colors.white,
                                  child: Row(
                                    children: [
                                      AutoSizeText(
                                        'I do ',
                                        style: GoogleFonts.gochiHand(
                                            fontSize: width / 39.5),
                                      ),
                                      AnimatedTextKit(
                                        onFinished: () {
                                          Provider.of<LaunchPageProvider>(
                                                  context,
                                                  listen: false)
                                              .incrementVisitorCount();
                                          context.go('/home');
                                        },
                                        repeatForever: false,
                                        isRepeatingAnimation: false,
                                        animatedTexts: [
                                          RotateAnimatedText(
                                            'Development',
                                            textStyle: GoogleFonts.gochiHand(
                                                fontSize: width / 39.5),
                                            transitionHeight: 100,
                                          ),
                                          RotateAnimatedText('Coding',
                                              textStyle: GoogleFonts.gochiHand(
                                                  fontSize: width / 39.5),
                                              transitionHeight: 100),
                                          RotateAnimatedText('both!',
                                              rotateOut: false,
                                              textStyle: GoogleFonts.gochiHand(
                                                  fontSize: width / 39.5),
                                              transitionHeight: 100,
                                              duration: const Duration(
                                                  milliseconds: 500)),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 8,
                                child: Container(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                width: width / 2,
                height: double.infinity,
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 500,
                  child: FutureBuilder(
                    future: loadLottieAnimation(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(child: CircularProgressIndicator());
                      } else if (snapshot.hasError) {
                        return const Center(child: Text('Failed to load animation'));
                      } else {
                        return Lottie.asset('lib/assets/images/animation.json');
                      }
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
