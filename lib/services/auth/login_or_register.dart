import 'package:chat_app/pages/login_page.dart';
import 'package:chat_app/pages/register_page.dart';
import 'package:flutter/material.dart';

class LoginOrRegist extends StatefulWidget {
  const LoginOrRegist({super.key});

  @override
  State<LoginOrRegist> createState() => _LoginOrRegistState();
}

class _LoginOrRegistState extends State<LoginOrRegist> {
  @override
  bool showLoginPage = true;

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(onTap: togglePages);
    } else {
      return RegistedPage(onTap: togglePages);
    }
  }
}
