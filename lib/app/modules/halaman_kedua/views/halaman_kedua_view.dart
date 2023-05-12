import 'package:flutter/material.dart';
import 'package:flutter_getx/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/halaman_kedua_controller.dart';

class HalamanKeduaView extends GetView<HalamanKeduaController> {
  HalamanKeduaView({Key? key}) : super(key: key);
  final TextEditingController codeC = TextEditingController();
  final TextEditingController namaC = TextEditingController();
  final TextEditingController qtyC = TextEditingController();
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
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            TextField(
              autocorrect: false,
              controller: codeC,
              keyboardType: TextInputType.number,
              maxLength: 10,
              decoration: InputDecoration(
                  labelText: "Kode Produk",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(9))),
            ),
            TextField(
              autocorrect: false,
              controller: codeC,
              keyboardType: TextInputType.number,
              maxLength: 10,
              decoration: InputDecoration(
                  labelText: "Kode Produk",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(9))),
            )
          ],
        ));
  }
}
