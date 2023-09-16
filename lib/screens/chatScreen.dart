import 'package:flutter/material.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/texts/d1.dart';
import 'package:guruzone/styles/texts/h1.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prashant Chauhan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<ChatMessage> _messages = [
    ChatMessage(text: 'Hello!', isUser: false),
    ChatMessage(text: 'Hi there!', isUser: false),
    ChatMessage(text: 'How are you?', isUser: false),
    ChatMessage(text: 'I am fine, thank you!', isUser: true),
  ];

  final TextEditingController _textController = TextEditingController();

  void _sendMessage() {
    final message = _textController.text;
    if (message.isNotEmpty) {
      setState(() {
        _messages.add(ChatMessage(text: message, isUser: true));
        _textController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat App',style: h1),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final chatMessage = _messages[index];
                return ChatBubble(
                  message: chatMessage.text,
                  isUser: chatMessage.isUser,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    style: d1,
                    controller: _textController,
                    decoration: InputDecoration(
                      hintText: 'Enter your message...',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatMessage {
  final String text;
  final bool isUser;

  ChatMessage({required this.text, required this.isUser});
}

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isUser;

  ChatBubble({required this.message, required this.isUser});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: isUser ? blue: Colors.white,
          boxShadow: [BoxShadow(
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(0.0, 6.0),
            color: Color(0xFFEFEFEF),
          )],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          message,
          style: isUser ? TextStyle(color: Colors.white,fontSize: 14,fontFamily: 'regular'): d1,
        ),
      ),
    );
  }
}