import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final double height;
  final double width;
  final EdgeInsets padding;

  const Logo({
    Key? key,
    this.height = 50,
    this.width = 50,
    this.padding = const EdgeInsets.only(left: 8.0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Image.asset(
        'lib/assets/icons/logo.png',
        height: height,
        width: width,
      ),
    );
  }
}
