import 'package:calisma_yapisi/entity/person.dart';
import 'package:calisma_yapisi/view/result_page.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class GamePage extends StatefulWidget {
  GamePage({required this.person, super.key});
  Person person;
  @override
  State<GamePage> createState() => _GamePageState();

}

class _GamePageState extends State<GamePage> {

  Future<bool> comeBackNavigation (BuildContext context) async {
    print("Navigation come back");
    return false; // geri donmez.
  }

  final String nameAppBar = "Game Page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: nameAppBar, onBack: () {
        Navigator.of(context).pop();
      }),
      body: WillPopScope(
        onWillPop: () => comeBackNavigation(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Name :${widget.person.name},\nAge :${widget.person.age}, \nHeight :${widget.person.height}, \nIs Work? :${widget.person.isWork}"),
              ElevatedButton(onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ResultPage())
                );
              } ,
                  child: const Text("FİNİSH"))
            ],
          ),
        ),
      ),
    );
  }
}





