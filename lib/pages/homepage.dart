import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaksha_app/pages/entercode.dart';
import 'package:kaksha_app/pages/newmeeting.dart';

class Homepage extends StatelessWidget {
  const Homepage({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Kaksha App"),
        backgroundColor: Colors.white12,
        foregroundColor: Colors.white,
        centerTitle: true,
      ), 
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20,50,0,0),
              child: ElevatedButton.icon(onPressed: (){
                // ignore: prefer_const_constructors
                Get.to( Newmeet());
              },
               icon: const Icon(Icons.add),
                label: const Text("Create Class",),
                // ignore: prefer_const_constructors
                style: ElevatedButton.styleFrom(fixedSize: Size (250,30),
                primary: CupertinoColors.lightBackgroundGray),
                ),
              ),
             // ignore: prefer_const_constructors
             Divider(thickness: 2, indent: 20,endIndent: 30,height: 30,) ,
             Padding(
               padding: const EdgeInsets.fromLTRB(20,0,0,0),
               child: OutlinedButton.icon(
                onPressed: (){
                   Get.to( entercode());
                },
                icon: const Icon(Icons.group),
                label: const Text("join using code"),
                style: OutlinedButton.styleFrom(backgroundColor: Colors.white,
                  fixedSize: const Size(250,30))),
             ),
          ],  
        ),
      ),
    );
  }
}