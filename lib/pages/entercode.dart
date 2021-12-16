import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaksha_app/videocall.dart';
// ignore: unused_import
import 'homepage.dart';

// ignore: camel_case_types, use_key_in_widget_constructors
class entercode extends StatelessWidget {
  // ignore: unused_field
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Colors.grey,
      // ignore: prefer_const_literals_to_create_immutables
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: InkWell(
                child: const Icon(Icons.arrow_back),
                onTap: Get.back,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Center(
              child: Text(
                "Enter the Code",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  backgroundColor: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Card(
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextField(
                  controller: _controller,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      border: InputBorder.none, hintText: "code : abc-def-ghi"),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(Videocall(),);
              },
              child: const Text('join'),
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(100, 30),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
            ),
          ],
        ),
      ),
    );
  }
}
