import 'package:calisma_yapisi/main.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  final String nameAppBar = "Result Page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: nameAppBar, onBack: (){
        Navigator.pop(context);
      }),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            } ,
                child: const Text("COME BACK")),
            ElevatedButton(onPressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
            } ,
                child: const Text("COME BACK HOME PAGE")),
          ],
        ),
      ),
    );
  }
}
