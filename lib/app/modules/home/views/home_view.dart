import 'package:flutter/material.dart';
import 'package:flutter_getx/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeView'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Row(children: <Widget>[
              IntrinsicHeight(
                  child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // FloatingActionButton(
                  //   onPressed: () {},
                  //   child: Icon(Icons.arrow_back_ios_new),
                  // ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purpleAccent,
                    ),
                    onPressed: () {
                      Get.offAllNamed(Routes.snackbarstyle);
                    },
                    child: Text('Snackbar'),
                  ),
                  VerticalDivider(),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {
                      Get.offAllNamed(Routes
                          .halamanKedua); // Aksi yang akan dijalankan ketika tombol ditekan
                    },
                    child: Text('Halaman Kedua'),
                  ),
                  VerticalDivider(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent),
                    onPressed: () {
                      // Aksi yang akan dijalankan ketika tombol ditekan
                      Get.offAllNamed(Routes.halamanKetiga);
                    },
                    child: Text('Halaman Ketiga'),
                  ),
                ],
              )),
            ]),
          ],
        ));
  }
}
