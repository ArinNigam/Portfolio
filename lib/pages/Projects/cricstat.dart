import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CricstatPage extends StatelessWidget {
  const CricstatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveScaledBox(
      width: 1048,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 1,
          shadowColor: Colors.black,
          backgroundColor: Colors.lightBlueAccent,
          toolbarHeight: 80,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.go('/home');
            },
          ),
          title: const Text(
            'Cricstat',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
