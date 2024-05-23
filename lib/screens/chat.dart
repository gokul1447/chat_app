import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_app/widgets/chat_msg.dart';
import 'package:flutter_chat_app/widgets/new_msg.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Chat App'),
        actions: [
          IconButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              icon:const Icon(Icons.logout_rounded))
        ],
      ),
      body:const Column(
        children: [
          Expanded(child: Chatmsg()),
          NewMsg()
          
        ],
      )
    );
  }
}
