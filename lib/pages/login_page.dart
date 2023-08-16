import 'package:chat_app/components/my_button.dart';
import 'package:chat_app/components/my_text_filed.dart';
import 'package:chat_app/services/auth/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  void signIn() {
    final authService = Provider.of<AuthService>(context, listen: false);
    try {
      authService.signInWithEmailAndPassword(
          emailController.text, passwordController.text);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            e.toString(),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Center(
          //logo
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.message,
                  size: 100,
                  color: Colors.grey[800],
                ),
                const SizedBox(height: 30),
                //welcome text
                const Text(
                  'Welcome back you\'ve been missed!',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 30),
                MyTextFiled(
                    controller: emailController,
                    hintText: 'Email',
                    obsecureText: false),
                const SizedBox(height: 10),
                //password textfield
                MyTextFiled(
                    controller: passwordController,
                    hintText: 'Password',
                    obsecureText: true),
                const SizedBox(height: 25),
                //sign in btn
                MyButton(text: 'Sign in', onTap: signIn),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not a member?'),
                    SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        'Register now',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          //signin button
          //not a member? register
        ),
      ),
    );
  }
}
