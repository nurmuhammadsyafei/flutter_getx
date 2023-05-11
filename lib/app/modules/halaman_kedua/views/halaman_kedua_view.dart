import 'package:flutter/material.dart';
import 'package:flutter_getx/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/halaman_kedua_controller.dart';

class HalamanKeduaView extends GetView<HalamanKeduaController> {
  const HalamanKeduaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Ini Halaman Kedua'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Aksi yang akan dijalankan ketika tombol kembali ditekan
              // Misalnya, kembali ke halaman sebelumnya
              Get.offAllNamed(Routes.home);
            },
          ),
        ),
        body: Row(
          children: <Widget>[
            IntrinsicHeight(
              child: Row(
                children: <Widget>[
                  // FloatingActionButton(
                  //   onPressed: () {},
                  //   child: Icon(Icons.arrow_back_ios_new),
                  // )
                  ElevatedButton(onPressed: () {}, child: Text("Back to Home"))
                ],
              ),
            )
          ],
        ));
  }
}
