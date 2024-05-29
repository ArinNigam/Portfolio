import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

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
    double width = 1048;

    return Container(
      width: width,
      padding: const EdgeInsets.only(top: 50, bottom: 50),
      color: Colors.transparent,
      child: Container(
        padding:
            const EdgeInsets.only(left: 60, right: 60, top: 30, bottom: 30),
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
                fontSize: 55,
                //decoration: TextDecoration.underline,
                //fontWeight: FontWeight.bold,
                //decorationStyle: TextDecorationStyle.double,
                decorationThickness: 0.5,
              ),
            ),
            const SizedBox(
              height: 40,
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
                                  width: 100,
                                  height: 100,
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
                                  fontSize: 18, color: Colors.white),
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
                            fontSize: 18, color: Colors.white),
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
