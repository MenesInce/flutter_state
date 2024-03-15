import 'package:calisma_yapisi/view/game_page.dart';
import 'package:flutter/material.dart';
import '../entity/person.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String nameAppBar = "Home Page";
  int value = 0;
  bool isChecked = false;

  Future<int> sum(int number1,int number2) async {
    int resultSum = number1 + number2;
    return resultSum;
  }

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
            ElevatedButton(
                onPressed: () {
                  var person = Person(name: "Melis", age: 25, height: 1.65, isWork: true);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => GamePage(person:person)));
                },
                child: const Text("START")),
            Visibility(visible: isChecked,child:const Text("Hello")),
            Text(isChecked ? "Hi Darling" : "Hi SweetHeard",style: TextStyle(color: isChecked ? Colors.red:Colors.cyan ),),
            const Text("Hey! Howdy?"),
            ((){
              if(isChecked){
                return const Text("IsChecked is TRUE",style: TextStyle(fontSize: 25,color: Colors.purpleAccent),);
              }else {
                return Text("IsChecked is FALSE",style: TextStyle(fontSize: 25,color: Colors.orange[900]),);
              }
            }()),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    isChecked = true;
                  });
                },
                child: const Text("Is Checked(TRUE)")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    isChecked = false;
                  });
                },
                child: const Text("Is Checked(FALSE)")),

            FutureBuilder<int>(
                future: sum(20, 45),
                builder: (context,snapshot){
                  if(snapshot.hasError){
                    return const Text("Error!!");
                  }
                  if(snapshot.hasData){
                    return Text("Result : ${snapshot.data}");
                  }else {
                    return const Text("NO RESULT!!");
                  }
                }
            ),
          ],
        ),
      ),
    );
  }
}
