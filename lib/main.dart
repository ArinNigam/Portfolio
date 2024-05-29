import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:portfolio/providers/techstack_page_provider.dart';
import 'package:provider/provider.dart';
import 'package:portfolio/routes.dart';
import 'firebase_options.dart';
import 'providers/project_page_provider.dart';
import 'providers/scroll_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ScrollProvider()),
        ChangeNotifierProvider(create: (_) => ProjectPageProvider(context)),
        ChangeNotifierProvider(create: (_) => TechStackPageProvider(context)),
      ],
      child: MaterialApp.router(
        title: "Portfolio Website",
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.black12,
          primarySwatch: Colors.blue,
          useMaterial3: true,
        ),
        routerConfig: routes,
      ),
    );
  }
}
