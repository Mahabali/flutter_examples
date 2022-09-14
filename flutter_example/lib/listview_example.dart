import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewExampleApp extends StatelessWidget {
  const ListViewExampleApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  ListViewBuilder(),
    );
  }
}

class ListViewBuilder extends StatelessWidget {
   List<String> listOfItems = [];
   ListViewBuilder({super.key}) {
     listOfItems = ["First","Second","Third","Fourth","Fifth"];
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListView.builder")),
      body: ListView.builder(
          itemCount: listOfItems.length,
          itemBuilder: (BuildContext context, int index) {
            // return ListTile(
            //
            //     leading: const Icon(Icons.list),
            //     trailing:  Text(
            //       index.toString(),
            //       style: TextStyle(color: Colors.grey, fontSize: 15),
            //     ),
            //     title: Text(listOfItems[index]),
            //   onTap: (){
            //     print("index $index");
            //   },
            // );
            return Container(child:Text(listOfItems[index]),color: Colors.red, padding: EdgeInsets.fromLTRB(0, 20, 0, 20),margin: EdgeInsets.all(5),);

          }),

    );
  }
}