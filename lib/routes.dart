import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/pages/Home/home_page.dart';
import 'package:portfolio/pages/LaunchPage/launch_page.dart';
import 'package:portfolio/pages/Projects/dsa_grind.dart';
import 'package:portfolio/pages/Projects/tic_tac_toe.dart';
import 'package:portfolio/pages/Projects/weather_app.dart';
import 'package:provider/provider.dart';

import 'pages/Projects/chatconnect.dart';
import 'pages/Projects/cricstat.dart';
import 'pages/Projects/smart_insti.dart';
import 'providers/launch_page_animation.dart';

final GoRouter routes = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => MaterialPage(
          child: ChangeNotifierProvider(
              child: const LaunchPage(), create: (_) => LaunchPageProvider())),
      routes: [
        GoRoute(
            path: 'home',
            pageBuilder: (context, state) => CustomTransitionPage(
                  child: const HomePage(),
                  key: state.pageKey,
                  transitionDuration: const Duration(milliseconds: 1000),
                  transitionsBuilder: (_, animation, ___, child) {
                    return FadeTransition(
                      opacity: CurveTween(curve: Curves.easeInOut)
                          .animate(animation),
                      child: child,
                    );
                  },
                ),
            routes: [
              GoRoute(
                  path: 'smart_insti',
                  pageBuilder: (context, state) =>
                      const MaterialPage(child: SmartInstiPage())),
              GoRoute(
                  path: 'cricstat',
                  pageBuilder: (context, state) =>
                      const MaterialPage(child: CricstatPage())),
              GoRoute(
                path: 'chatconnect',
                pageBuilder: (context, state) => const MaterialPage(
                  child: ChatConnectPage(),
                ),
              ),
              GoRoute(
                path: 'weatherapp',
                pageBuilder: (context, state) => const MaterialPage(
                  child: WeatherAppPage(),
                ),
              ),
              GoRoute(
                path: 'tic_tac_toe',
                pageBuilder: (context, state) => const MaterialPage(
                  child: TicTacToePage(),
                ),
              ),
              GoRoute(
                path: 'dsa_grind',
                pageBuilder: (context, state) => const MaterialPage(
                  child: DSAGrindPage(),
                ),
              ),
            ]),
      ],
    ),
  ],
);
