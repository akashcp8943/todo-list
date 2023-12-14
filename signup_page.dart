import 'package:flutter/material.dart';
import 'package:todo_app/Your profile.dart';
import 'package:todo_app/Otp.dart';
import 'package:todo_app/Sign_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> form = GlobalKey<FormState>();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();
  final TextEditingController username = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phonenumber = TextEditingController();
  List<bool>isCheckedList=[false];

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                  child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 350),
                      child: IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return const Sign_in();
                        }));
                      },
                        icon: const Icon(Icons.arrow_back),
                        color: Colors.white,
                      ),
                    ),
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('SignUp',
                          style:  TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: username,
                        decoration: InputDecoration(
                          hintText: 'User Name',hintStyle:TextStyle(color: Colors.white),
                          border:  OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),),
                        ),style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: email,
                        decoration: InputDecoration(
                          hintText: 'Email',hintStyle:TextStyle(color: Colors.white),
                          border:  OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),style: TextStyle(color: Colors.white),
                        validator: (value) {
                          if(value==null||value.isEmpty){
                            return 'Please enter  email';
                          }
                          if(!RegExp(r'\S+@\S+\.\S+').hasMatch(value)){
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: phonenumber,
                        decoration: InputDecoration(
                          hintText: 'Phone Number',hintStyle:TextStyle(color: Colors.white),
                          border:  OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),style: TextStyle(color: Colors.white),
                        validator: (value) {
                          if(value?.length!=10){
                            return 'Please enter valid Mobile Number';
                          }
                          else{
                            return null;
                          }
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: password,
                        decoration: InputDecoration(
                          hintText: 'Password',hintStyle:TextStyle(color: Colors.white),
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
                      child: TextFormField(
                        controller: confirmPassword,
                        decoration: InputDecoration(
                          hintText: 'Confirm password',hintStyle:TextStyle(color: Colors.white),
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
                    CheckboxListTile(
                      value: isCheckedList[0],
                      onChanged: (bool?value){
                        setState(() {
                          isCheckedList[0]=value!;
                        });
                      },
                      title: const Text('Accept terms and condition',style: TextStyle(color: Colors.white),
                      ),
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return const OtpVerification();
                        }));
                      },
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size.fromWidth(300),
                            foregroundColor: Colors.white,
                            backgroundColor: Color(0xfffd746c)
                        ),
                        child: const Text('Login',style: TextStyle(fontWeight:FontWeight.bold)),
                      ),
                    ),


                  ]),
                ),
              ],
        ),
      ),

    );
  }
}