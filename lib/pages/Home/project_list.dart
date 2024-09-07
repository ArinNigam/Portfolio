import 'dart:math';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../providers/project_page_provider.dart';

class ProjectList extends StatelessWidget {
  const ProjectList({super.key});

  void _redirectTo(String link) async {
    try {
      if (!await launchUrl(Uri.parse(link))) {
        throw ('Error launching url');
      }
    } catch (error) {
      Logger().e(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    bool isMobile =
        MediaQuery.of(context).size.height > MediaQuery.of(context).size.width;
    width = width < 1200 ? 1200 : width;

    return Consumer<ProjectPageProvider>(
      builder: (_, projectProvider, __) {
        return SizedBox.expand(
          child: Wrap(
            alignment: WrapAlignment.spaceAround,
            direction: Axis.horizontal,
            runAlignment: WrapAlignment.spaceEvenly,
            runSpacing: width / 24.675,
            children: [
              for (Project i in projectProvider.projects)
                SizedBox(
                  width: isMobile ? width / 3.1 : width / 4.1,
                  height: max(640, width / 1.68),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.lightBlue[50],
                        borderRadius: BorderRadius.circular(35)),
                    child: Column(
                      children: [
                        ClipRRect(
                          clipBehavior: Clip.antiAlias,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(35),
                              topRight: Radius.circular(35)),
                          child: i.image,
                        ),
                        Align(
                          heightFactor: 2,
                          alignment: Alignment.center,
                          child: Text(
                            i.title,
                            style: GoogleFonts.xanhMono(
                                fontSize: width / 61.8125,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Stack(
                          children: [
                            Wrap(
                              alignment: WrapAlignment.spaceEvenly,
                              spacing: 8.0,
                              runSpacing: 4.0,
                              children: i.techStack.map((tech) {
                                return SizedBox(
                                  width: width / 19.4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        gradient: const RadialGradient(colors: [
                                          Color(0xFF1b1b1b),
                                          Color(0xFF3a3a3a),
                                        ]),
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8.0),
                                          child: ClipRRect(
                                            clipBehavior: Clip.antiAlias,
                                            child: SizedBox(
                                              width: 40,
                                              height: 40,
                                              child: tech.image,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }).toList(),
                            )
                          ],
                        ),
                        Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              i.briefDescription.toUpperCase(),
                              style: GoogleFonts.sairaCondensed(
                                  fontSize: width / 90),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: !isMobile
                              ? SelectableText(
                                  focusNode: FocusNode(),
                                  i.description,
                                  style:
                                      GoogleFonts.sahitya(fontSize: width / 90),
                                )
                              : null,
                        ),
                        const Expanded(
                          child: SizedBox(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(
                                  style: ButtonStyle(
                                    shape: WidgetStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    backgroundColor:
                                        WidgetStateProperty.all<Color>(
                                            i.primaryColor),
                                    fixedSize: WidgetStateProperty.all<Size>(
                                        Size(width / 11, width / 35.4)),
                                  ),
                                  onPressed: () => context.go(i.pagePath),
                                  child: Text(
                                    "Read more",
                                    style: GoogleFonts.sairaCondensed(
                                        fontSize: width / 98.7,
                                        color: Colors.white),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () => _redirectTo(i.source),
                                  style: ButtonStyle(
                                    shape: WidgetStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    backgroundColor:
                                        WidgetStateProperty.all<Color>(
                                            i.primaryColor),
                                    fixedSize: WidgetStateProperty.all<Size>(
                                        Size(width / 11, width / 35.4)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        LineIcons.github,
                                        color: Colors.black,
                                        size: width / 61.8125,
                                      ),
                                      Text(
                                        "Repository",
                                        style: GoogleFonts.sairaCondensed(
                                            fontSize: width / 98.7,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
