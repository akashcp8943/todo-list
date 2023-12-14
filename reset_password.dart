import 'package:flutter/material.dart';
import 'package:todo_app/Sign_in.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  var newpassword =TextEditingController();
  var confirmPassword=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: Column(children: [SizedBox(height: 60,),
        const Center(
          child:  Text('Reset Password',
            style:  TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextFormField(
            controller: newpassword,
            decoration: InputDecoration(
              hintText: 'Password',hintStyle: TextStyle(color: Colors.white),
              border:  OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),style: TextStyle(color: Colors.white),
            validator: (value) {
              RegExp regExp = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$%&^*]).{8,}$');
              if(value==null){
                return 'Please enter password';
              }
              else
              {
                if(!regExp.hasMatch(value)){
                  return 'Please enter correct password';
                }
                else
                {
                  return null;
                }
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextFormField(
            controller: confirmPassword,
            decoration: InputDecoration(
              hintText: 'Re-password',hintStyle: TextStyle(color: Colors.white),
              border:  OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),style: TextStyle(color: Colors.white),
            validator: (value) {
              RegExp regExp = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$%&^*]).{8,}$');
              if(value==null){
                return 'Please enter password';
              }
              else
              {
                if(!regExp.hasMatch(value)){
                  return 'Please enter correct password';
                }
                else
                {
                  return null;
                }
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return const Sign_in();
            }));
          },
            style: ElevatedButton.styleFrom(
                fixedSize: const Size.fromWidth(300),
                foregroundColor: Colors.black,
                backgroundColor: Colors.white
            ),
            child: const Text(' Reset Password '),
          ),
        ),
      ]),
    );
  }
}
