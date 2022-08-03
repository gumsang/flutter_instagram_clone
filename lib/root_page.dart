import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/login_page.dart';
import 'package:flutter_instagram_clone/tab_page.dart';

class RootPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, AsyncSnapshot<User?> snapshot) {
        if (snapshot.hasData) {
          print(snapshot.hasData);
          return TabPage(snapshot.data!);
        } else {
          print(snapshot.hasData);
          return LoginPage();
        }
      },
    );
  }
}
