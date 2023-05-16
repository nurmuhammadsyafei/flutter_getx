import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/formsubmit_controller.dart';

class FormsubmitView extends GetView<FormsubmitController> {
  const FormsubmitView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FormsubmitView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FormsubmitView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
