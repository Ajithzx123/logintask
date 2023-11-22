// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:task_login/controller/post_controller.dart';

class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();


    return Scaffold(
      body: Row(
        children: [
          Container(
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Container(
                width: 20.h,
               
              decoration: BoxDecoration(
                color: Colors.blue,
                
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('go finance',textAlign: TextAlign.center,),
                    Text('the most popular peer to peer lending at sea',textAlign: TextAlign.center,),
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                        color: Colors.lightBlue
                        ),child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('read more'),
                        )),
                    )
                  ],
                ),
              ),
              )
              
              ],
            ),
          ),
          Expanded(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text('hello again',textAlign: TextAlign.center,),
                 Text('welcome back',textAlign: TextAlign.center,),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: TextField(
                     controller: emailcontroller,
                     decoration: InputDecoration(
                       hintText: 'email address'
                     ),
                   ),
                 ),
                  Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: TextField(
                     controller: passwordcontroller,
                     
                     decoration: InputDecoration(
                      
                       hintText: 'password'
                     ),
                   )
                 ),
                 InkWell(
             onTap: () {
             createLogin(emailcontroller.text,passwordcontroller.text);
             
             },
                   child: Container(
                     width: 200,
                     decoration: BoxDecoration(
                       color: Colors.blue,
                      //  border: Border.all(),
                       borderRadius: BorderRadius.circular(9)
                     ),
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text('login'),
                     ),
                   ),
                 )
               ],
             ),
          )
        ],
      ),
    );
  }
}