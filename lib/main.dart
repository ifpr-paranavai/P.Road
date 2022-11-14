import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:p_road/ui/screen/account/login_page.dart';
import 'package:p_road/core/utils/constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'P.Road',
      theme: ThemeData.dark().copyWith(
        primaryColor: mainColor,
        primaryColorDark: highlightColor,

        scaffoldBackgroundColor: mainColor,
        appBarTheme: const AppBarTheme(color: mainColor),
      ),
      home: LoginScreen(),
    );
  }
}
