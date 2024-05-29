import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Projects/project_list.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    width = width < 1200 ? 1200 : width;

    return Container(
      width: width,
      padding: const EdgeInsets.only(top: 50, bottom: 50),
      child: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: width / 13.16),
              child: Text(
                "Projects",
                style: GoogleFonts.amaticSc(
                  fontSize: width / 24.675,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            IntrinsicHeight(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(20)),
                margin: const EdgeInsets.symmetric(horizontal: 90),
                padding: const EdgeInsets.only(top: 100, bottom: 100),
                child: const ProjectList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
