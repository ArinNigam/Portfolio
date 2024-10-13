import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../../providers/scroll_provider.dart';

class WeatherAppPage extends StatelessWidget {
  const WeatherAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    ScrollProvider scrollProvider =
        Provider.of<ScrollProvider>(context, listen: false);
    scrollProvider.appBarHeight = height / 13.15 < 60 ? 60 : height / 13.15;
    bool isMobile =
        MediaQuery.of(context).size.height > MediaQuery.of(context).size.width;
    return ResponsiveScaledBox(
      width: isMobile ? 455 : 1978,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 1,
          shadowColor: Colors.black,
          backgroundColor: Colors.lightBlueAccent,
          toolbarHeight: 40,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.go('/home');
            },
          ),
          title: const Text(
            'Weather App',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: SizedBox(
            width: double.infinity,
            height: height,
            child: isMobile
                ? Image.asset('lib/assets/projects_images/weather_app.png')
                : Image.asset('lib/assets/projects_images/weather_app.png',
                    fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
