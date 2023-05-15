import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/jadwalsholat_controller.dart';

class JadwalsholatView extends GetView<JadwalsholatController> {
  const JadwalsholatView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('JadwalsholatView'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            ListTile(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              title: Text("Nur Muhammad Syafei"),
              subtitle: Text("Ini adalah subtitle"),
              // leading: CircleAvatar(
              //   backgroundImage: AssetImage('assets/img/megawati.jpg'),
              //   // radius: 50, // set the radius as per your requirements
              // ),
              trailing: Text("10.20 PM"),
            )
          ],
        ));
  }
}
