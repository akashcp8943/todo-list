import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_app/reset_password.dart';
import 'package:todo_app/signup_page.dart';
class Sign_in extends StatefulWidget {
  const Sign_in({super.key});

  @override
  State<Sign_in> createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pwdController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Welcome",
                style: TextStyle
                  (fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
                SizedBox(
                  height: 20,
                ),
                buttonItem('Asset/google 2.svg',"continue with Google",25),
                SizedBox(height: 15),
                buttonItem('Asset/phone.jpg', "continue with mobile",30),
                SizedBox(height: 15,),
                Text("or",style: TextStyle(color: Colors.white,fontSize: 18),),
                SizedBox(height: 15,),
                textItem("E-mail..",emailController,false),
                SizedBox(height: 15,),
                textItem("Password...",pwdController,true),
                SizedBox(height: 30,),
                colorButton(),
                SizedBox(height: 20,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("if you dont have an Account?",
                      style: TextStyle(color: Colors.white,
                        fontSize:18,),),
                    TextButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return SignUp();
                    },));

                    }, child: Text("Sign-up",
                      style: TextStyle(color: Colors.white,
                          fontSize:18,fontWeight: FontWeight.bold),)),
                  ],),
                SizedBox(height: 10,),
                TextButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ResetPassword();
                },));

                }, child:   Text("Forgot password",
                  style: TextStyle(color: Colors.red,
                      fontSize:17,fontWeight: FontWeight.bold),)),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black, backgroundColor: Colors.grey, // Text color
                  ),
                  child: const Text("Send Email Verification"),
                ), ]),

        ),
      ),
    );
  }
  Future<void> _addUserAndSendEmailVerification() async {
    try {
      UserCredential userCredential =
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: pwdController.text,
      );

      User? user = userCredential.user;

      if (user != null) {
        await user.sendEmailVerification();

        await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
          'email': emailController.text,
        });


      }
    } catch (e) {
      print('Error adding user to Firebase: $e');
    }
  }
  Widget colorButton()
  {
    return InkWell(
      onTap: () async{
        try{

        }catch(e){

        }
      },
      child: Container(width: MediaQuery.of(context).size.width,
        height: 60,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                colors: [
                  Color(0xfffd746c),
                  Color(0xffff9068),
                  Color(0xfffd746c)])),
        child: Text("sign_in",style: TextStyle()),
      ),
    );
  }
  Widget buttonItem(String imagepath,String buttonName, double size)
  {
    return  Container(
      width: MediaQuery.of(context).size.width-60,
      height:60,
      child: Card(
        color: Colors.black,
        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15),side:
        BorderSide(width: 1,color: Colors.grey)),
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(imagepath,
              height: size,width: size,),
            SizedBox(width: 15),
            Text(buttonName,style: TextStyle(color: Colors.white,fontSize: 17)

            )
          ],
        ),
      ),
    );
  }
  Widget textItem(String labeltext,TextEditingController controller,bool obscureText)
  {
    return Container( width: MediaQuery.of(context).size.width-70,
      height:55,
      child: TextFormField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(labelText: labeltext,
              labelStyle: TextStyle(fontSize: 17,
                  color: Colors.white),focusedBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(15),borderSide:
              BorderSide(width: 1.5,color: Colors.amber)),

              enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(15),borderSide:
              BorderSide(width: 1,color: Colors.grey)))
      ),

    );
  }
}

