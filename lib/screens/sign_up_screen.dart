import 'package:flutter/material.dart';
import 'package:todolist_app/components/my_button.dart';
import 'package:todolist_app/components/my_textfield.dart';
import 'package:todolist_app/constant/constant.dart';
import 'package:todolist_app/screens/sign_in_screen.dart';
import 'homescreen.dart'; // Import HomeScreen here

import 'package:firebase_auth/firebase_auth.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final rePasswordController = TextEditingController();

  final String txtMsg = '';

  void _showDialog(String txtMsg) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.amber,
          title: const Text('Sign Up'),
          content: Text(txtMsg),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  // Function to handle user signup
  void signUp() async {
    if (passwordController.text != rePasswordController.text) {
      _showDialog('Passwords do not match!');
      return;
    }

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      // Navigate to HomeScreen after successful signup
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );

      _showDialog('Signup successfully!');
    } on FirebaseAuthException {
      _showDialog('Failed to Sign-up!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 80, 15, 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to KMUTNB community',
                style: textTitle,
              ),
              const SizedBox(height: 20),
              Text(
                'To get started, please create an account.',
                style: textSubTitle,
              ),
              const SizedBox(height: 30),
              MyTextField(
                controller: nameController,
                hintText: 'Enter your name',
                obscureText: false,
                labelText: 'Name',
              ),
              const SizedBox(height: 30),
              MyTextField(
                controller: emailController,
                hintText: 'Enter your Email',
                obscureText: false,
                labelText: 'Email',
              ),
              const SizedBox(height: 20),
              MyTextField(
                controller: passwordController,
                hintText: 'Enter your Password',
                obscureText: true,
                labelText: 'Password',
              ),
              const SizedBox(height: 20),
              MyTextField(
                controller: rePasswordController,
                hintText: 'Enter your Password again',
                obscureText: true,
                labelText: 'Re-password',
              ),
              const SizedBox(height: 30),
              MyButton(
                onTap: signUp,
                hinText: 'Register now',
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already a member?',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(width: 5),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
