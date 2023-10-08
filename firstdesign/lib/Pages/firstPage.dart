import 'package:firstdesign/Pages/SignInPage.dart';
import 'package:firstdesign/Pages/SignUpPage.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class firstPage extends StatelessWidget {
  const firstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CupertinoColors.destructiveRed,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: 20,),

              const Align(
                alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text("Welcome\nto \nHello World!",
                        style: TextStyle(fontSize: 36,
                          fontWeight: FontWeight.w600,)),
                  )
              ),

              Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      print("Sign up");
                      Navigator.push(context, MaterialPageRoute(builder: (context) => signUpPage()));
                    },
                    child: Container(
                      height: 45,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black87,
                          boxShadow: [BoxShadow(
                              color: Colors.black45.withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 3,
                              offset: const Offset(0, 2)
                          )]
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text("Sign Up",style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                          fontWeight: FontWeight.w600
                        ),),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20,),

                  GestureDetector(
                    onTap: (){
                      print("Sign in");
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const signInPage()));
                    },
                    child: Container(
                      height: 45,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white70,
                          boxShadow: [BoxShadow(
                              color: Colors.white70.withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 3,
                              offset: const Offset(0, 2)
                          )]
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text("Sign In",style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                        ),),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                width: double.infinity,
                child: Image.asset('assets/perfectImg.png',fit: BoxFit.cover,),
              )
              
            ],
          ),
        )
      );

  }
}
