import 'package:flickd_app/pages/main_page.dart';
import 'package:flickd_app/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    SplashPage(
      key: UniqueKey(),
      onInitializationComplete: () => runApp(MyApp()),
    ),
  );
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flickd',
      initialRoute: 'home',
      routes: {
        'home': (BuildContext _context) => const MainPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
