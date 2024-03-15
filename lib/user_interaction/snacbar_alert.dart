import 'package:flutter/material.dart';

class UserInteraction extends StatefulWidget{
  const UserInteraction({super.key});

  @override
  State<UserInteraction> createState() => _UserInteractionState();
}

class _UserInteractionState extends State<UserInteraction> {
  final String titleAppBar = "User Interaction";
  var tfControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(titleAppBar),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                   SnackBar(
                      content: const Text("Silmek istiyor musunuz?"),
                      action:SnackBarAction(label: "EVET", onPressed: (){
                         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("SİLİNDİ")));
                      }) ,

                  ),
                );
            }, child:const Text("Snackbar")),

            ElevatedButton(onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text("Silmek istiyor musunuz?",style: TextStyle(color: Colors.purpleAccent),),
                  //backgroundColor: Colors.yellowAccent,
                  action:SnackBarAction(label: "EVET",textColor: Colors.green, onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("SİLİNDİ",style: TextStyle(color: Colors.black),),
                    //backgroundColor: Colors.yellowAccent,),
                    ));
                  }) ,

                ),
              );

            }, child:const Text("Snackbar(Ozel)")),

            ElevatedButton(onPressed: () {
              showDialog(context: context,
                  builder: (BuildContext context){
                return AlertDialog(
                  title: const Text("Baslik"),
                  content: const Text("Icerik"),
                  actions: [
                    TextButton(onPressed: (){Navigator.pop(context);}, child: Text("IPTAL")),
                    TextButton(onPressed: (){Navigator.pop(context);}, child: Text("TAMAM"))
                  ],
                );
                  }

              );

            }, child:const Text("Alert")),
            ElevatedButton(onPressed: () {
              showDialog(context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      title: const Text("Kayit Islemi"),
                      content: TextField(controller: tfControl,decoration: const InputDecoration(hintText: "Veri")),
                      actions: [
                        TextButton(onPressed: (){Navigator.pop(context);}, child: const Text("IPTAL",style: TextStyle(color: Colors.red),)),
                        TextButton(onPressed: (){
                          print("KAYDEDİLDİ : ${tfControl.text}");
                          tfControl.text= "";
                          Navigator.pop(context);},
                            child: const Text("KAYDET",style: TextStyle(color: Colors.red)))
                      ],
                    );
                  }

              );

            }, child:const Text("Snackbar (Ozel)")),
          ],
        ),
      ),
    );
  }
}
