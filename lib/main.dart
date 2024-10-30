import 'package:flutter/material.dart';
import 'package:todolist_app/screens/sign_in_screen.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';



void main() async{
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ToDoListApp());
}

class ToDoListApp extends StatefulWidget {
  const ToDoListApp({super.key});

  @override
  State<ToDoListApp> createState() => _ToDoListAppState();
}

class _ToDoListAppState extends State<ToDoListApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To do list application from I-BIT',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: true,
      home: SignInScreen(),
    );
  }
}
