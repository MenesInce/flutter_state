import 'package:calisma_yapisi/bottom_navigatiion_bar/first_page.dart';
import 'package:calisma_yapisi/bottom_navigatiion_bar/second_page.dart';
import 'package:calisma_yapisi/bottom_navigatiion_bar/third_page.dart';
import 'package:flutter/material.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  final String titleAppBar = "Bottom Navigation Bar";
  int selectedIndex = 0;
  var pages = [const FirstPage(),const SecondPage(),const ThirdPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(titleAppBar),),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.looks_one_outlined),label: "One"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_two_outlined),label: "Two"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_3_outlined),label: "Three"),
        ],
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        selectedItemColor: Colors.yellow[900],
        backgroundColor: Colors.yellow[300],
        unselectedItemColor: Colors.black,
      ),
    );
  }
}
