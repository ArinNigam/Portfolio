import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../../providers/launch_page_animation.dart';

class LaunchPage extends StatelessWidget {
  const LaunchPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = 900;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<LaunchPageProvider>(context, listen: false).startAnimation();
    });

    return SizedBox(
      width: width,
      child: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                    style: TextStyle(
                                        fontSize: width / 33,
                                        fontFamily: 'Arial'),
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
                                        style: TextStyle(
                                            fontSize: width / 39.5,
                                            fontFamily: 'Quicksand'),
                                        minFontSize: 20,
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
                                            textStyle: TextStyle(
                                                fontSize: width / 39.5,
                                                fontFamily: 'Cambria'),
                                            transitionHeight: 100,
                                          ),
                                          RotateAnimatedText('Coding',
                                              textStyle: TextStyle(
                                                  fontSize: width / 39.5,
                                                  fontFamily: 'Cambria'),
                                              transitionHeight: 100),
                                          RotateAnimatedText('both!',
                                              rotateOut: false,
                                              textStyle: TextStyle(
                                                  fontSize: width / 39.5,
                                                  fontFamily: 'Cambria'),
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
                width: 200,
                height: double.infinity,
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 200,
                  child: Lottie.asset(
                      'lib/assets/images/Animation - 1716380402174.json'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
