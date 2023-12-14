import 'package:flutter/material.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("All List",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
      leading: IconButton(onPressed: () {

      }, icon: Icon(Icons.keyboard_arrow_down,size: 25,weight: 10)),),
      drawer: Drawer(child:
      ListTile(title: Text(""),),
      ),
      body: SingleChildScrollView(
        child: Column(children: [

        ]),
      ),

    );
  }
}
