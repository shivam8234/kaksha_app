import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class Videocall extends StatelessWidget {
 
  // ignore: prefer_final_fields
  AgoraClient _client = AgoraClient(
    agoraConnectionData: AgoraConnectionData(
      appId: '241bb6f0f05549c482228b3e6febe1f7',
      tempToken: "006241bb6f0f05549c482228b3e6febe1f7IABj3lOvkjNbpq5wXqxjp+zNhH8iPLdp7ljklyCNsi74Ywx+f9gAAAAAEABw2xAIGdWbYQEAAQAp1Zth",
      channelName: "test"
    ),
     enabledPermission: [
       Permission.camera,
       Permission.microphone
     ]
    );
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
           AgoraVideoViewer(client: _client,
           ),
           AgoraVideoButtons(client: _client,)
           ]),
      ),
    );
  }
}