import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget{
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("FİRST PAGE",style: TextStyle(color: Colors.black,fontSize: 30)),
      ),
      backgroundColor: Colors.redAccent,
    );
  }
}
