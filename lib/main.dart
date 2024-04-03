import 'package:flutter/material.dart';
import 'package:flutter_chat_app/screens/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Chat App',
        theme: ThemeData().copyWith(
            colorScheme: ColorScheme.fromSeed(
                seedColor: Color.fromARGB(149, 97, 3, 99))),
        home: AuthScreen());
  }
}
