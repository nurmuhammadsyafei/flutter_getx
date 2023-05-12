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
      body: const Center(
        child: Text(
          'JadwalsholatView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
