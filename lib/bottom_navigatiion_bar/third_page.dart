import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("THİRD PAGE",style: TextStyle(color: Colors.black,fontSize: 30)),
      ),
      backgroundColor: Colors.cyan,
    );
  }
}
