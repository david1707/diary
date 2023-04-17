import 'package:flutter/material.dart';

import 'package:diary/pages/login_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff2B7a78),
          foregroundColor: Color(0xffFEFFFF),
        ),
        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              Color(0xff2B7a78),
            ),
            foregroundColor: MaterialStatePropertyAll(
              Color(0xffFEFFFF),
            ),
          ),
        ),
        scaffoldBackgroundColor: const Color(0xff3AAFA9),
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}
