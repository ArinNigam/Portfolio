import 'package:flutter/material.dart';

class Photo extends StatelessWidget {
  final double size;
  final EdgeInsets margin;

  const Photo({super.key, required this.size, required this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.5),
            spreadRadius: 10,
            blurRadius: 5,
          ),
        ],
      ),
      child: ClipOval(
        child: SizedBox(
          width: size,
          height: size,
          child: Image.asset('lib/assets/images/profile_pic.png'),
        ),
      ),
    );
  }
}
