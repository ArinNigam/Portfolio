import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../providers/scroll_provider.dart';
import 'home_about.dart';

class HomeIntro extends StatelessWidget {
  const HomeIntro({super.key});

  void _redirectMyWhatsapp() async {
    String number = '917042052330';
    String message = '?text=Yo!%20What\'s%20up%20Arin?';
    try {
      if (!await launchUrl(Uri.parse('https://wa.me/$number$message'))) {
        throw ('Error launching url');
      }
    } catch (error) {
      Logger().e(error);
    }
  }

  void _sendMeMail() async {
    String view = 'cm'; // Compose view
    String fullscreen = '1'; // Fullscreen view
    String to = 'arin.nigam@gmail.com'; // Receiver's email
    String subject = 'Enquiry%20about'; // Subject of email
    String body = 'HeyR%20Arin,%20'; // Body of email

    String link =
        'https://mail.google.com/mail/?view=$view&fs=$fullscreen&to=$to&su=$subject&body=$body';
    try {
      if (!await launchUrl(Uri.parse(link))) {
        throw ('Error launching url');
      }
    } catch (error) {
      Logger().e(error);
    }
  }

  void _redirectMyGithub() async {
    String link = 'https://github.com/ArinNigam';
    try {
      if (!await launchUrl(Uri.parse(link))) {
        throw ('Error launching url');
      }
    } catch (error) {
      Logger().e(error);
    }
  }

  void _redirectMyLinkedIn() async {
    String link = 'https://www.linkedin.com/in/arin-nigam/';
    try {
      if (!await launchUrl(Uri.parse(link))) {
        throw ('Error launching url');
      }
    } catch (error) {
      Logger().e(error);
    }
  }

  void _redirectMyLeetCode() async {
    String link = 'https://leetcode.com/u/arin_nigam/';
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
    double height = 1048; // MediaQuery.of(context).size.height;

    return Container(
      height: height - 80,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFF03045e),
            Color(0xFF0077b6),
            Color(0xFF00b4d8),
            Color(0xFF90e0ef),
            Color(0xFFcaf0f8),
          ],
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(color: Colors.black, offset: Offset(0.0, 0))
        ],
      ),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 100, top: 150),
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
                width: 280,
                height: 280,
                child: Image.asset('lib/assets/images/profile_pic.png'),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 150, left: 500),
            width: 624,
            height: 822,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello,\nI am Arin Nigam',
                  style: GoogleFonts.zillaSlab(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    textStyle: const TextStyle(fontWeight: FontWeight.bold),
                    fontSize: 70,
                    shadows: [
                      const Shadow(
                        offset: Offset(-1, 1),
                        color: Colors.blueAccent,
                        blurRadius: 10,
                      ),
                    ],
                  ),
                ),
                Text(
                  'I am a tech enthusiast about AI and Software Development',
                  style: GoogleFonts.bioRhyme(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.amberAccent,
                      shadows: [
                        const Shadow(
                          offset: Offset(-1, 1),
                          color: Colors.blueAccent,
                          blurRadius: 10,
                        )
                      ]),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  height: 80,
                  width: 625,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(40)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () => _redirectMyGithub(),
                        icon: const Icon(LineIcons.github, color: Colors.black),
                        iconSize: 45,
                      ),
                      IconButton(
                        onPressed: () => _redirectMyLinkedIn(),
                        icon: const Icon(LineIcons.linkedin),
                        iconSize: 45,
                        color: Colors.blueAccent,
                      ),
                      IconButton(
                        onPressed: () => _sendMeMail(),
                        icon: const Icon(LineIcons.envelope),
                        iconSize: 45,
                        color: Colors.redAccent,
                      ),
                      IconButton(
                        onPressed: () => _redirectMyWhatsapp(),
                        icon: const Icon(LineIcons.whatSApp),
                        iconSize: 45,
                        color: Colors.green,
                      ),
                      IconButton(
                        onPressed: () => _redirectMyLeetCode(),
                        icon: const Icon(LineIcons.code),
                        iconSize: 45,
                        color: Colors.orange,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 200),
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.transparent,
                    // Set the background color to transparent
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 2),
                        blurRadius: 4.0,
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                      ), // Your custom paint widget
                      SizedBox(
                        width: 200,
                        height: 50,
                        child: TextButton(
                          onPressed: () => Provider.of<ScrollProvider>(context,
                                  listen: false)
                              .scrollToProjects(height + 20),
                          style: TextButton.styleFrom(
                            backgroundColor: const Color(0xFF0d1b2a),
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 0,
                          ),
                          child: const Text(
                            "See My Work",
                            style: TextStyle(
                                fontSize: 20, color: Colors.amberAccent),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 1150, top: 100),
            padding:
                const EdgeInsets.only(left: 80, right: 80, top: 0, bottom: 80),
            child: const AboutMePage(),
          )
        ],
      ),
    );
  }
}
