import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:p_road/ui/screen/account/login_page.dart';

import 'home_widget.dart';


class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: ( context, snapshot) {
        if (snapshot.hasData) {
          return Main_page();
        }else{
          return LoginScreen();
        }
      },
    ),
  );
}


