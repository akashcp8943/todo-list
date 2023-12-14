import 'package:flutter/material.dart';
import 'package:todo_app/Sign_in.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({super.key});

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetohome();
  }
  _navigatetohome()async{
    await Future.delayed(Duration(seconds:5),() {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => Sign_in(),));

    },);
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.only(left: 140),
        child: Row(
          children: [
            Center(child: Text("2",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.white,))),
            Center(child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text("dO",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white ),),
            )),
            Center(child: Padding(
              padding: EdgeInsets.only(bottom:20),
              child: Icon(Icons.bookmark_add_outlined,color: Colors.red,size:60,),
            ))
          ],
        ),
      ),
    );
  }
}
