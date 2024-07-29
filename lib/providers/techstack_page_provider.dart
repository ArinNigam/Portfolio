import 'package:flutter/material.dart';

class TechStack {
  final String name;
  final Image image;

  TechStack({required this.name, required this.image});
}

class TechStackPageProvider extends ChangeNotifier {
  TechStackPageProvider(BuildContext context) {
    _loadImages(context);
  }
  Future<void> _loadImages(BuildContext context) async {
    for (var tech in techs) {
      await precacheImage(
        tech.image.image,
        context,
      );
    }
    notifyListeners();
  }

  TechStack getTechstack(String name) {
    for (TechStack i in techs) {
      if (i.name == name) return i;
    }
    return techs[0];
  }

  List<TechStack> techs = [
    TechStack(name: 'C', image: Image.asset('lib/assets/icons/c.png')),
    TechStack(name: 'C++', image: Image.asset('lib/assets/icons/c++.png')),
    TechStack(
        name: 'Python', image: Image.asset('lib/assets/icons/python.png')),
    TechStack(name: 'Java', image: Image.asset('lib/assets/icons/java.png')),
    TechStack(name: 'HTML', image: Image.asset('lib/assets/icons/html.png')),
    TechStack(name: 'CSS', image: Image.asset('lib/assets/icons/css.png')),
    TechStack(
        name: 'JavaScript', image: Image.asset('lib/assets/icons/js.png')),
    TechStack(
        name: 'TailwindCSS',
        image: Image.asset('lib/assets/icons/tailwind_css.png')),
    TechStack(
        name: 'MongoDB', image: Image.asset('lib/assets/icons/mongodb.png')),
    TechStack(
        name: 'Express', image: Image.asset('lib/assets/icons/express.png')),
    TechStack(name: 'React', image: Image.asset('lib/assets/icons/react.png')),
    TechStack(
        name: 'NextJS', image: Image.asset('lib/assets/icons/nextjs.png')),
    TechStack(
        name: 'TypeScript',
        image: Image.asset('lib/assets/icons/typescript.png')),
    TechStack(
        name: 'NodeJS', image: Image.asset('lib/assets/icons/nodejs.png')),
    TechStack(name: 'Dart', image: Image.asset('lib/assets/icons/dart.png')),
    TechStack(
        name: 'Flutter', image: Image.asset('lib/assets/icons/flutter.png')),
    TechStack(
        name: 'Firebase', image: Image.asset('lib/assets/icons/firebase.png')),
    TechStack(name: 'Redis', image: Image.asset('lib/assets/icons/redis.png')),
    TechStack(
        name: 'GraphQL', image: Image.asset('lib/assets/icons/graphql.png')),
    TechStack(name: 'Numpy', image: Image.asset('lib/assets/icons/numpy.png')),
    TechStack(
        name: 'MatPlotLib',
        image: Image.asset('lib/assets/icons/matplotlib.png')),
    TechStack(
        name: 'Sckit Learn', image: Image.asset('lib/assets/icons/scikit.png')),
    TechStack(
        name: 'GitHub', image: Image.asset('lib/assets/icons/github.png')),
    TechStack(name: 'Canva', image: Image.asset('lib/assets/icons/canva.png')),
    TechStack(name: 'Figma', image: Image.asset('lib/assets/icons/figma.png')),
    TechStack(
        name: 'VS Code', image: Image.asset('lib/assets/icons/vscode.png')),
    TechStack(
        name: 'Sublime Text',
        image: Image.asset('lib/assets/icons/sublime.png')),
  ];
}
