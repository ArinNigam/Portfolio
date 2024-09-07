import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/logo.dart';
import 'package:portfolio/pages/Home/introduction.dart';
import 'package:portfolio/pages/Home/techstack_layout.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../providers/scroll_provider.dart';
import 'projects_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile =
        MediaQuery.of(context).size.height > MediaQuery.of(context).size.width;

    ScrollProvider scrollProvider =
        Provider.of<ScrollProvider>(context, listen: false);
    scrollProvider.appBarHeight = isMobile ? 40 : 60;

    Future<String> getLicense() async {
      String aboutMe = await rootBundle.loadString("LICENSE");
      return aboutMe;
    }

    return ResponsiveScaledBox(
        width: isMobile ? 455 : 1978,
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: isMobile ? 0 : 1,
            shadowColor: Colors.black,
            backgroundColor: Colors.lightBlue,
            toolbarHeight: scrollProvider.appBarHeight,
            leading: const Logo(),
            actions: [
              StreamBuilder<DocumentSnapshot>(
                stream: FirebaseFirestore.instance
                    .collection('Visitors')
                    .doc('TotalVisitors')
                    .snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const CircularProgressIndicator();
                  }
                  final count = snapshot.data!['count'] ?? 0;

                  return ElevatedButton(
                    onPressed: () => showDialog(
                      context: context,
                      builder: (context) => ResponsiveScaledBox(
                        width: isMobile ? 455 : 1978,
                        child: Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)),
                          child: IntrinsicWidth(
                            child: IntrinsicHeight(
                              child: Padding(
                                padding: isMobile
                                    ? const EdgeInsets.all(10.0)
                                    : const EdgeInsets.all(16.0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(23.0),
                                      child: Align(
                                        alignment: Alignment.topCenter,
                                        child: Text(
                                          "Arin's Portfolio Website",
                                          style:
                                              GoogleFonts.roboto(fontSize: 35),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: Text(
                                        "Welcome to my portfolio website\nYou are the $count visitor\nOr you could have been the ${count - 1} visitor and just reloaded the website\nThis website is made using Flutter and Firebase\nYou can find the source code of this website on GitHub\nYou can also find the licenses of the packages used in this website\n\nHope you like my work\nThank you for visiting :)",
                                        style: const TextStyle(fontSize: 16),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 23),
                                      child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            ElevatedButton(
                                              onPressed: () => showDialog(
                                                context: context,
                                                builder: (context) =>
                                                    ResponsiveScaledBox(
                                                  width: 1978,
                                                  child: Dialog(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              0.0),
                                                      child:
                                                          FutureBuilder<String>(
                                                        future: getLicense(),
                                                        builder: (context,
                                                            snapshot) {
                                                          if (snapshot
                                                              .hasData) {
                                                            return Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        const EdgeInsets
                                                                            .all(
                                                                            20.0),
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        SelectableText(
                                                                          snapshot
                                                                              .data!,
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                          16.0),
                                                                  child:
                                                                      ElevatedButton(
                                                                    onPressed: () =>
                                                                        context
                                                                            .pop(),
                                                                    style: ElevatedButton
                                                                        .styleFrom(
                                                                      elevation:
                                                                          2.5,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      fixedSize: const Size
                                                                          .fromHeight(
                                                                          35.0),
                                                                    ),
                                                                    child:
                                                                        const Text(
                                                                            "Ok"),
                                                                  ),
                                                                ),
                                                              ],
                                                            );
                                                          } else {
                                                            return const SizedBox(
                                                                width: 100,
                                                                height: 100,
                                                                child: Scaffold(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .black,
                                                                    body: Center(
                                                                        child:
                                                                            CircularProgressIndicator())));
                                                          }
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                elevation:
                                                    2.5, // Add elevation if needed
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0), // Adjust the radius as needed
                                                ),
                                                fixedSize: const Size
                                                    .fromHeight(
                                                    35.0), // Adjust the height as needed
                                              ),
                                              child: const Text(
                                                "Licenses",
                                                style: TextStyle(fontSize: 18),
                                              ),
                                            ),
                                            ElevatedButton(
                                              onPressed: () => context.pop(),
                                              style: ElevatedButton.styleFrom(
                                                elevation:
                                                    2.5, // Add elevation if needed
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0), // Adjust the radius as needed
                                                ),
                                                fixedSize: const Size
                                                    .fromHeight(
                                                    35.0), // Adjust the height as needed
                                              ),
                                              child: const Text(
                                                "Back",
                                                style: TextStyle(fontSize: 18),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.tealAccent,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      fixedSize: Size(isMobile ? 130 : 200, isMobile ? 0 : 50),
                    ),
                    child: Text(
                      'Visitor no : $count',
                      style: TextStyle(
                          fontSize: isMobile ? 12 : 18, color: Colors.black),
                    ),
                  );
                },
              ),
              SizedBox(
                width: isMobile ? 0 : 100,
              )
            ],
            title: isMobile
                ? Center(
                    child: Text(
                      "Portfolio",
                      style: GoogleFonts.robotoMono(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  )
                : Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: Text(
                        "Portfolio",
                        style: GoogleFonts.robotoMono(
                          color: Colors.black,
                          fontSize: 40,
                        ),
                      ),
                    ),
                  ),
          ),
          floatingActionButton: Consumer<ScrollProvider>(
            builder: (context, scrollProvider, _) {
              return scrollProvider.showFloatingButton
                  ? Container(
                      height: isMobile ? 50 : 80,
                      width: isMobile ? 50 : 80,
                      margin: const EdgeInsets.only(bottom: 25, right: 25),
                      child: FloatingActionButton(
                        onPressed: scrollProvider.scrollToTop,
                        backgroundColor: Colors.lightBlueAccent,
                        child: const Icon(
                          Icons.arrow_upward,
                          size: 30,
                        ),
                      ),
                    )
                  : Container();
            },
          ),
          body: SingleChildScrollView(
            controller: scrollProvider.homeScrollController,
            scrollDirection: Axis.vertical,
            child: const Column(
              children: [
                HomeIntro(),
                TechStackPage(),
                ProjectPage(),
              ],
            ),
          ),
        ));
  }
}
