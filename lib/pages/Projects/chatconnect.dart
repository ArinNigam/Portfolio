import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/providers/scroll_provider.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ChatConnectPage extends StatelessWidget {
  const ChatConnectPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile =
        MediaQuery.of(context).size.height > MediaQuery.of(context).size.width;
    ScrollProvider scrollProvider =
        Provider.of<ScrollProvider>(context, listen: false);
    scrollProvider.appBarHeight = isMobile ? 40 : 80;
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
            'ChatConnect',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: isMobile
              ? const EdgeInsets.symmetric(horizontal: 0)
              : const EdgeInsets.symmetric(horizontal: 100.0),
          child: SizedBox(
              width: isMobile ? 500 : double.infinity,
              height: isMobile ? 500 : 800,
              child: isMobile
                  ? Image.asset(
                      'lib/assets/projects_images/chat_connect.png',
                    )
                  : Image.asset('lib/assets/projects_images/chat_connect.png',
                      fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
