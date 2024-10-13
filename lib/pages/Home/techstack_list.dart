import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/providers/techstack_page_provider.dart';
import 'package:provider/provider.dart';

class TechstackList extends StatelessWidget {
  const TechstackList({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    bool isMobile =
        MediaQuery.of(context).size.height > MediaQuery.of(context).size.width;

    return Consumer<TechStackPageProvider>(
      builder: (_, techstackProvider, __) {
        return SizedBox.expand(
          child: Wrap(
            alignment: WrapAlignment.spaceEvenly,
            direction: Axis.horizontal,
            runAlignment: WrapAlignment.spaceEvenly,
            runSpacing: width / 48.3,
            children: [
              for (TechStack i in techstackProvider.techs)
                SizedBox(
                  width: isMobile ? width / 2.5 : width / 5.8,
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [
                          Color(0xFF1b1b1b),
                          Color(0xFF3a3a3a),
                        ]),
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          clipBehavior: Clip.antiAlias,
                          child: SizedBox(
                            width: isMobile ? 50 : 80,
                            height: isMobile ? 50 : 80,
                            child: TechStackWidget(techStack: i),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Align(
                          heightFactor: 2,
                          alignment: Alignment.center,
                          child: Text(
                            i.name,
                            style: GoogleFonts.xanhMono(
                                fontSize: isMobile ? 15 : 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
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

class TechStackWidget extends StatelessWidget {
  final TechStack techStack;

  const TechStackWidget({Key? key, required this.techStack}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: precacheImage(techStack.image.image, context),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return techStack.image;
        } else {
          return Container(
            width: 50,
            height: 50,
            color: Colors.grey,
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
