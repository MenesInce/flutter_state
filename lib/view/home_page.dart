import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String nameAppBar = "Home Page";
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(nameAppBar),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Value : $value"),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    value += 1;
                  });
                },
                child: const Icon(Icons.touch_app_outlined)),
          ],
        ),
      ),
    );
  }
}
