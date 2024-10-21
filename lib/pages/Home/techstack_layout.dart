import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'techstack_list.dart';

class TechStackPage extends StatelessWidget {
  const TechStackPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    bool isMobile =
        MediaQuery.of(context).size.height > MediaQuery.of(context).size.width;

    return Container(
      width: width,
      padding: const EdgeInsets.only(top: 25),
      child: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: width / 13.16),
              child: Text(
                "Techstacks",
                style: GoogleFonts.amaticSc(
                  fontSize: isMobile ? width / 12 : width / 24.675,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            IntrinsicHeight(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(20)),
                margin: isMobile
                    ? const EdgeInsets.symmetric(horizontal: 20)
                    : const EdgeInsets.symmetric(horizontal: 90),
                padding: isMobile
                    ? const EdgeInsets.symmetric(vertical: 10)
                    : const EdgeInsets.symmetric(vertical: 50),
                child: const TechstackList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
