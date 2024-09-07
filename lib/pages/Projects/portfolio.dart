import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/providers/scroll_provider.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    ScrollProvider scrollProvider =
        Provider.of<ScrollProvider>(context, listen: false);
    scrollProvider.appBarHeight = height / 13.15 < 60 ? 60 : height / 13.15;
    return ResponsiveScaledBox(
      width: 1048,
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
            'Portfolio',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: height,
                      child: Image.asset('lib/assets/images/portfolio1.png',
                          fit: BoxFit.fitHeight),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: height,
                      child: Image.asset('lib/assets/images/portfolio2.png',
                          fit: BoxFit.fitHeight),
                    ),
                  )
                ],
              );
              return null;
            },
          ),
        ),
      ),
    );
  }
}
