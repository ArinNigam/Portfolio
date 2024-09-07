import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../providers/scroll_provider.dart';

class Intro extends StatelessWidget {
  final double height;
  final bool isMobile;

  const Intro({super.key, required this.height, required this.isMobile});

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
    String body = 'Hello%20Arin,%20'; // Body of email

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
    return Container(
      margin: isMobile
          ? const EdgeInsets.only(top: 80, left: 20, right: 20)
          : const EdgeInsets.only(top: 150, left: 500),
      width: isMobile ? double.infinity : 624,
      height: isMobile ? 1000 : 822,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment:
            isMobile ? MainAxisAlignment.center : MainAxisAlignment.start,
        children: [
          Text(
            'Hello,\nI am Arin Nigam',
            style: GoogleFonts.zillaSlab(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              textStyle: const TextStyle(fontWeight: FontWeight.bold),
              fontSize: isMobile ? 30 : 70,
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
                fontSize: isMobile ? 20 : 30,
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
            height: isMobile ? 50 : 100,
            width: isMobile ? double.infinity : 625,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(40)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () => _redirectMyGithub(),
                  icon: const Icon(LineIcons.github, color: Colors.black),
                  iconSize: isMobile ? 30 : 45,
                ),
                IconButton(
                  onPressed: () => _redirectMyLinkedIn(),
                  icon: const Icon(LineIcons.linkedin),
                  iconSize: isMobile ? 30 : 45,
                  color: Colors.blueAccent,
                ),
                IconButton(
                  onPressed: () => _sendMeMail(),
                  icon: const Icon(LineIcons.envelope),
                  iconSize: isMobile ? 30 : 45,
                  color: Colors.redAccent,
                ),
                IconButton(
                  onPressed: () => _redirectMyWhatsapp(),
                  icon: const Icon(LineIcons.whatSApp),
                  iconSize: isMobile ? 30 : 45,
                  color: Colors.green,
                ),
                IconButton(
                  onPressed: () => _redirectMyLeetCode(),
                  icon: const Icon(LineIcons.code),
                  iconSize: isMobile ? 30 : 45,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
          SizedBox(
            height: isMobile ? 20 : 40,
          ),
          Container(
            width: isMobile ? 150 : 200,
            height: isMobile ? 100 : 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.transparent,
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                SizedBox(
                  width: 200,
                  height: isMobile ? 50 : 100,
                  child: TextButton(
                    onPressed: () => Provider.of<ScrollProvider>(context,
                            listen: false)
                        .scrollToProjects(isMobile ? 1.04 * height : height),
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF0d1b2a),
                      padding: isMobile
                          ? const EdgeInsets.symmetric(horizontal: 10)
                          : const EdgeInsets.symmetric(horizontal: 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 0,
                    ),
                    child: const Text(
                      "See My Work",
                      style: TextStyle(fontSize: 20, color: Colors.amberAccent),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
