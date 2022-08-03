import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/login_page.dart';
import 'package:flutter_instagram_clone/tab_page.dart';

class RootPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UserCredential>(
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return TabPage(snapshot.data!);
        } else {
          return LoginPage();
        }
      },
    );
  }
}
