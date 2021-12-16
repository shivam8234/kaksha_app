import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Newmeet extends StatelessWidget {
  const Newmeet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children:  [
             Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                  child: const Icon(Icons.arrow_back),
                  onTap: Get.back,
                ),
              ),
              const SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Card(
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const ListTile(
                    leading: Icon(Icons.link_sharp),
                    title: SelectableText("data"),
                    trailing: Icon(Icons.copy),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              ElevatedButton.icon(
                onPressed: (){ },
                 icon: const Icon(Icons.share),
                  label: const Text("Share Meeting Code",),
                  // ignore: prefer_const_constructors
                  style: ElevatedButton.styleFrom(fixedSize: Size (250,30),
                  primary: CupertinoColors.systemBlue),
                  ),
               const SizedBox(height: 15,),
               OutlinedButton.icon(
                  onPressed: (){ },
                  icon: const Icon(Icons.video_call_sharp),
                  label: const Text("Start Meeting"),
                  style: OutlinedButton.styleFrom(backgroundColor: Colors.white,
                    fixedSize: const Size(250,30))),
          ],
        ),
      ),
    );
  }
}
