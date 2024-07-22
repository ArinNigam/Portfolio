import 'package:flutter/material.dart';

class Project {
  final String title;
  final Image image;
  final String briefDescription;
  final String source;
  final String description;
  final String pagePath;
  final Color primaryColor;
  final Color secondaryColor;

  Project(
      {required this.title,
      required this.image,
      required this.source,
      required this.pagePath,
      required this.briefDescription,
      required this.description,
      required this.primaryColor,
      required this.secondaryColor});
}

class ProjectPageProvider extends ChangeNotifier {
  double opacity = 1;

  ProjectPageProvider(BuildContext context) {
    _loadImages(context);
  }

  Future<void> _loadImages(BuildContext context) async {
    for (var project in projects) {
      await precacheImage(
        project.image.image,
        context,
      );
    }
    notifyListeners();
  }

  void toggleFade() {
    if (opacity == 1) {
      opacity = 0.5;
      notifyListeners();
      return;
    }
    opacity = 1;
    notifyListeners();
    return;
  }

  Project getProject(String title) {
    for (Project i in projects) {
      if (i.title == title) return i;
    }
    return projects[0];
  }

  List<Project> projects = [
    Project(
      title: "Smart Insti".toUpperCase(),
      image: Image.asset('lib/assets/images/foss_overflow.png'),
      source: "https://github.com/OpenLake/Smart-Insti-App",
      pagePath: '/home/smart_insti',
      briefDescription: """For the Students and Faculty""",
      description:
          'This app aims to solve the day-to-day problems that students and faculty face in Colleges and aims to consolidate a lot of useful applications into single app. This could include features like Time Table, Classroom Vacancy, Lost and Found, Chatrooms on various topics like Internet Issues. It could also have a broadcast feature which would be very useful in emergency situations.',
      primaryColor: Colors.blue,
      secondaryColor: Colors.blueAccent,
    ),
    Project(
      title: "Talawa".toUpperCase(),
      image: Image.asset('lib/assets/images/talawa.png'),
      source: "https://github.com/PalisadoesFoundation/talawa",
      pagePath: '/home/talawa',
      briefDescription: """Easy Community Organization Management""",
      description:
          """It is an Open Source Project which aims to provide a platform to manage the community organizations. It provides features like managing members, events, tasks and discussions. It also provides a platform for the members to interact with each other. I have contributed during the pre GSoC'24 period. Here is the link to my proposal.""",
      primaryColor: Colors.orange,
      secondaryColor: Colors.orangeAccent,
    ),
    Project(
      title: "Socio".toUpperCase(),
      image: Image.asset('lib/assets/images/socio.png'),
      source: "https://github.com/ArinNigam/Socio",
      pagePath: '/home/socio',
      briefDescription: """Connect with your Friends and Family""",
      description:
          """Socio is a social networking app designed to connect you with your friends and family. It offers a user-friendly interface for seamless communication and interaction. With Socio, you can share updates, photos and stay updated on what's happening in your social circle. It also includes features for group chats, event planning, and more, making it a comprehensive platform for all your social needs.""",
      primaryColor: Colors.purple,
      secondaryColor: Colors.purpleAccent,
    ),
    Project(
      title: "Cricstat".toUpperCase(),
      image: Image.asset('lib/assets/images/cricstat.png'),
      source: "https://github.com/ArinNigam/cricstat",
      pagePath: '/home/cricstat',
      briefDescription: """Cricket Fans Unite!""",
      description:
          'CricStat is a cricket statistics app that provides you with cricket scores, and statistics. Stay updated with live scores, player stats, team rankings, and more. Whether you’re a cricket enthusiast or just a casual fan, CricStat is your one-stop destination for all things cricket!',
      primaryColor: Colors.red,
      secondaryColor: Colors.redAccent,
    ),
    Project(
      title: "Chat Connect".toUpperCase(),
      image: Image.asset('lib/assets/images/chatconnect.png'),
      source: "https://github.com/ArinNigam/Chat-App",
      pagePath: '/home/chatconnect',
      briefDescription: """Chat with Friends""",
      description:
          'ChatConnect is a user-friendly and secure messaging app that allows you to connect with friends and family. With ChatConnect, you can send messages to your contacts and stay connected and chat with your loved ones anytime, anywhere with ChatConnect!',
      primaryColor: Colors.green,
      secondaryColor: Colors.greenAccent,
    ),
    Project(
      title: "Weather App".toUpperCase(),
      image: Image.asset('lib/assets/images/weather.png'),
      source: "https://github.com/ArinNigam/Weather-App",
      pagePath: '/home/weatherapp',
      briefDescription: """Quick Weather Updates""",
      description:
          'WeatherApp is your ultimate companion for staying updated with real-time weather conditions, forecasts, and alerts. Designed with user-friendly features and a sleek interface, WeatherApp ensures that you are always prepared for whatever Mother Nature has in store. Whether you\'re planning your day, week, or the next adventure, WeatherApp provides all the weather information you need at your fingertips.',
      primaryColor: Colors.cyan,
      secondaryColor: Colors.cyanAccent,
    ),
    Project(
      title: "Tic Tac Toe".toUpperCase(),
      image: Image.asset('lib/assets/images/tic_tac_toe.png'),
      source: "https://github.com/ArinNigam/Tic-Tac-Toe",
      pagePath: '/home/tic_tac_toe',
      briefDescription: """Your favourite childhood game""",
      description:
          'Tic Tac Toe is the timeless, simple, and engaging game that challenges your strategic thinking and quick decision-making skills. Whether you’re a kid, a teen, or an adult, this classic game offers endless fun and is perfect for passing the time or honing your skills.',
      primaryColor: Colors.pink,
      secondaryColor: Colors.pinkAccent,
    ),
    Project(
      title: "DSA Grind".toUpperCase(),
      image: Image.asset('lib/assets/images/DSA.png'),
      source: "https://github.com/ArinNigam/DSA-Grind",
      pagePath: '/home/dsa_grind',
      briefDescription: """Daily DSA Practice""",
      description:
          'DSA Grind is your go-to platform for mastering Data Structures and Algorithms through daily practice. With a wide range of questions and topics, It helps you build a strong foundation in DSA and ace your coding interviews. Whether you’re a beginner or an expert, It offers a variety of questions to challenge and enhance your problem-solving skills!',
      primaryColor: Colors.teal,
      secondaryColor: Colors.tealAccent,
    ),
  ];
}
