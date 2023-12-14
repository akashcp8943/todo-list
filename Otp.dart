import 'package:flutter/material.dart';
import 'package:todo_app/Sign_in.dart';
import 'package:todo_app/signup_page.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 350),
                child: IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const SignUp();
                  }));
                },
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.white,
                ),
              ),
              const Center(
                child:  Text('Veification',
                  style:  TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('You will get an OTP via SMS',
                  style:  TextStyle(
                    fontSize:20,
                    color: Colors.white,
                  ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 180),
                child: Flexible(
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 60,
                            width: 50,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 60,
                            width: 50,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 60,
                            width: 50,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 60,
                            width: 50,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
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
                  child: const Text(' Verify '),
                ),
              ),
              Padding(
                padding:  const EdgeInsets.only(top: 100),
                child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return OtpVerification();
                },));

                }, child:  const Text("Don't receive an OTP? Resend Again"
                  ,style: TextStyle(color: Colors.white),
                ),
                ),
              ),

            ],),
        )
    );
  }
}