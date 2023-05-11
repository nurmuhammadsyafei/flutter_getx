import 'package:flutter/material.dart';
import 'package:flutter_getx/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/halaman_ketiga_controller.dart';

class HalamanKetigaView extends StatefulWidget {
  const HalamanKetigaView({super.key});

  @override
  State<HalamanKetigaView> createState() => _HalamanKetigaViewState();
}

class _HalamanKetigaViewState extends State<HalamanKetigaView> {
  int angka = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Halaman Ketiga"),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Get.offAllNamed(Routes.home);
              },
              icon: Icon(Icons.arrow_back_ios_new)),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              angka.toString(),
              style: TextStyle(fontSize: 30 + double.parse(angka.toString())),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      if (angka != 1) {
                        setState(() {
                          angka--;
                        });
                      }
                      print(angka);
                    },
                    child: Icon(Icons.remove)),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        angka++;
                      });
                      print(angka);
                    },
                    child: Icon(Icons.add))
              ],
            )
          ],
        ));
  }
}

// class HalamanKetigaView extends GetView<HalamanKetigaController> {
//   HalamanKetigaView({Key? key}) : super(key: key);
//   int angka = 1;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('HalamanKetigaView'),
//           centerTitle: true,
//           leading: IconButton(
//             icon: Icon(Icons.arrow_back_ios_new),
//             onPressed: () {
//               Get.offAllNamed(Routes.home);
//             },
//           ),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Text(
//               angka.toString(),
//               style: TextStyle(fontSize: 30),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton(
//                     onPressed: () {
//                       if (angka != 1) {
//                         angka--;
//                       }
//                       print(angka);
//                     },
//                     child: Icon(Icons.remove)),
//                 ElevatedButton(
//                     onPressed: () {
//                       angka++;
//                       print(angka);
//                     },
//                     child: Icon(Icons.add))
//               ],
//             )
//           ],
//         ));
//   }
// }
