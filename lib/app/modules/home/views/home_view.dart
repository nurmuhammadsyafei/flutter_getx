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
      body:
          // ListView(
          //   children: [
          // Row(children: <Widget>[
          //   IntrinsicHeight(
          //       child: new Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: <Widget>[
          //       // FloatingActionButton(
          //       //   onPressed: () {},
          //       //   child: Icon(Icons.arrow_back_ios_new),
          //       // ),
          //       ElevatedButton(
          //         style: ElevatedButton.styleFrom(
          //           backgroundColor: Colors.purpleAccent,
          //         ),
          //         onPressed: () {
          //           Get.offAllNamed(Routes.snackbarstyle);
          //         },
          //         child: Text('Snackbar'),
          //       ),
          //       VerticalDivider(),
          //       ElevatedButton(
          //         style:
          //             ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          //         onPressed: () {
          //           Get.offAllNamed(Routes
          //               .halamanKedua); // Aksi yang akan dijalankan ketika tombol ditekan
          //         },
          //         child: Text('Halaman Kedua'),
          //       ),
          //       VerticalDivider(),
          //       ElevatedButton(
          //         style: ElevatedButton.styleFrom(
          //             backgroundColor: Colors.redAccent),
          //         onPressed: () {
          //           // Aksi yang akan dijalankan ketika tombol ditekan
          //           Get.offAllNamed(Routes.halamanKetiga);
          //         },
          //         child: Text('Halaman Ketiga'),
          //       ),
          //     ],
          //   )),
          // ]),
          // Row(
          //   children: [
          //     Text("bebek goreng"),
          //   ],
          // ),
          // GridView.builder(
          //   itemCount: 4,

          // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20),
          // itemBuilder: (context, index) {
          // return Container(
          //   color: Color.fromARGB(255, 223, 83, 83),
          // );
          // },
          // )
          GridView.builder(
        itemCount: 9,
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          late String title;
          late IconData icon;
          late VoidCallback ontep;

          switch (index) {
            case 0:
              title = "Snackbar";
              icon = Icons.power_input;
              ontep = () => Get.toNamed(Routes.snackbarstyle);
              break;
            case 1:
              title = "Halaman Kedua";
              icon = Icons.pages;
              ontep = () => Get.toNamed(Routes.halamanKedua);
              break;
            case 2:
              title = "Halaman Ketiga";
              icon = Icons.pageview;
              ontep = () => Get.toNamed(Routes.halamanKetiga);
              break;
            case 3:
              title = "Jadwal Sholat";
              icon = Icons.mosque;
              ontep = () => Get.toNamed(Routes.jadwalsholat);
              break;
            case 4:
              title = "Home Statefull";
              icon = Icons.home;
              ontep = () => Get.toNamed(Routes.home_stateful);
              break;
            case 5:
              title = "radio";
              icon = Icons.radio_button_checked;
              ontep = () => Get.toNamed(Routes.radio);
              break;
            case 6:
              title = "Login";
              icon = Icons.login;
              ontep = () => Get.toNamed(Routes.login);
              break;
            default:
              title = "unknow";
              icon = Icons.device_unknown;
              ontep = () {
                print("unknow");
              };
          }

          return Material(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: ontep,
              borderRadius: BorderRadius.circular(90),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: Icon(icon, size: 25),
                  ),
                  const SizedBox(height: 10),
                  Text(title),
                ],
              ),
            ),
          );
        },
      ),
      //   ],
      // )
    );
  }
}
