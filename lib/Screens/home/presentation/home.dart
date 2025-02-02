import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Chat Bot'),),
      body: Container(decoration:BoxDecoration(
        image: DecorationImage(image: AssetImage('asset/images/whatsappBackground.jpg'))
      ),
      ),
    );
  }
}
