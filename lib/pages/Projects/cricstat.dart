import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../../providers/scroll_provider.dart';

class CricstatPage extends StatelessWidget {
  const CricstatPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile =
        MediaQuery.of(context).size.height > MediaQuery.of(context).size.width;
    ScrollProvider scrollProvider =
        Provider.of<ScrollProvider>(context, listen: false);

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
            'Cricstat',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: isMobile
              ? const EdgeInsets.symmetric(horizontal: 0.0)
              : const EdgeInsets.symmetric(horizontal: 100.0),
          child: SizedBox(
              width: double.infinity,
              height: isMobile ? 500 : 800,
              child: isMobile
                  ? Image.asset(
                      'lib/assets/projects_images/cricstat.png',
                    )
                  : Image.asset(
                      'lib/assets/projects_images/cricstat.png',
                      fit: BoxFit.fill,
                    )),
        ),
      ),
    );
  }
}
