import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../../providers/scroll_provider.dart';

class SocioPage extends StatelessWidget {
  const SocioPage({super.key});

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
            'Socio',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, _) {
                return Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: isMobile ? 500 : 1000,
                        child: Image.asset(
                            'lib/assets/projects_images/socio/signup.png',
                            fit: BoxFit.fitHeight),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: isMobile ? 500 : 1000,
                        child: Image.asset(
                            'lib/assets/projects_images/socio/login.png',
                            fit: BoxFit.fitHeight),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: isMobile ? 500 : 1000,
                        child: Image.asset(
                            'lib/assets/projects_images/socio/home.png',
                            fit: BoxFit.fitHeight),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: isMobile ? 500 : 1000,
                        child: Image.asset(
                            'lib/assets/projects_images/socio/update.png',
                            fit: BoxFit.fitHeight),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: isMobile ? 500 : 1000,
                        child: Image.asset(
                            'lib/assets/projects_images/socio/chat.png',
                            fit: BoxFit.fitHeight),
                      ),
                    ),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
