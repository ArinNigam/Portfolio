import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMe extends StatelessWidget {
  final bool isMobile;
  final double height;
  const AboutMe({Key? key, required this.isMobile, required this.height})
      : super(key: key);

  Future<({String aboutMe, String education})> getMyInfo() async {
    String aboutMe =
        await rootBundle.loadString("lib/assets/texts/about_me.txt");
    String education =
        await rootBundle.loadString("lib/assets/texts/education.txt");

    aboutMe = aboutMe.replaceAll('\n', ' ');

    return (aboutMe: aboutMe, education: education);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      margin: isMobile
          ? EdgeInsets.symmetric(vertical: height * 0.65)
          : EdgeInsets.only(top: 40, left: 1098, right: 20),
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 80,
        vertical: isMobile ? 20 : 80,
      ),
      width: width,
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: isMobile ? 20 : 60,
          vertical: isMobile ? 20 : 30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF03045e),
                Color(0xFF0077b6),
                Color(0xFF00b4d8),
              ]),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 0),
              blurRadius: 1.0,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SelectableText(
              'About Me',
              style: GoogleFonts.crushed(
                color: Colors.amberAccent,
                fontSize: isMobile ? 35 : 55,
                decorationThickness: 0.5,
              ),
            ),
            SizedBox(
              height: isMobile ? 20 : 40,
            ),
            FutureBuilder<({String aboutMe, String education})>(
              future: getMyInfo(),
              builder: (BuildContext context,
                  AsyncSnapshot<({String aboutMe, String education})>
                      snapshot) {
                if (snapshot.hasData) {
                  String aboutMe = snapshot.data?.aboutMe ?? '';
                  String education = snapshot.data?.education ?? '';
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: ClipOval(
                                child: SizedBox(
                                  width: isMobile ? 60 : 100,
                                  height: isMobile ? 60 : 100,
                                  child: Image.asset(
                                      'lib/assets/images/bits_pilani.png'),
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: SelectableText(
                              education,
                              style: GoogleFonts.robotoMono(
                                  fontSize: isMobile ? 14 : 18,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SelectableText(
                        aboutMe,
                        style: GoogleFonts.robotoMono(
                            fontSize: isMobile ? 14 : 18, color: Colors.white),
                      ),
                    ],
                  );
                }

                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
