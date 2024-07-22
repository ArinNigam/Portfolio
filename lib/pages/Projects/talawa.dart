import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:portfolio/providers/scroll_provider.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

class TalawaPage extends StatelessWidget {
  const TalawaPage({super.key});

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
            'Talawa',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: InkWell(
              onTap: () async {
                Uri url = Uri.parse(
                    'https://drive.google.com/file/d/1d-ieSxLnRobTiqBaP1OPA20_AlH7toSO/view?usp=drive_link');
                try {
                  if (!await launchUrl(url)) {
                    throw ('Error launching url');
                  }
                } catch (error) {
                  Logger().e(error);
                }
              },
              child: Text(
                'My GSoC\'24 Proposal',
                style: TextStyle(
                    color: Colors.blue, decoration: TextDecoration.underline),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
