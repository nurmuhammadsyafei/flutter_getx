import 'package:flutter/material.dart';
import 'package:flutter_getx/app/routes/app_pages.dart';
import 'package:flutter_getx/models/http_stateful.dart';

import 'package:get/get.dart';

import '../controllers/home_stateful_controller.dart';

class HomeStatefulView extends StatefulWidget {
  const HomeStatefulView({super.key});
  @override
  State<HomeStatefulView> createState() => _HomeStatefulView();
}

class _HomeStatefulView extends State<HomeStatefulView> {
  HttpStateful dataResponse = HttpStateful();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home - Statefull'),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FittedBox(
                child: Text(
                  (dataResponse.id == "")
                      ? "ID : Belum ada data"
                      : "ID : ${dataResponse.id}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 20),
              FittedBox(
                child: Text(
                  (dataResponse.id == "")
                      ? "NAMA : Belum ada data"
                      : "NAMA : ${dataResponse.name}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 20),
              FittedBox(
                child: Text(
                  (dataResponse.id == "")
                      ? "JOB : Belum ada data"
                      : "JOB : ${dataResponse.job}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 20),
              FittedBox(
                child: Text(
                  (dataResponse.id == "")
                      ? "CreatedAt : Belum ada data"
                      : "CreatedAt : ${dataResponse.createdAt}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              OutlinedButton(
                  onPressed: () {
                    HttpStateful.connectAPI("joni", "back end").then((value) {
                      // setstate
                      // print(value.name);
                      setState(() {
                        dataResponse = value;
                      });
                    });
                  },
                  child: Text(
                    "POST DATA",
                    style: TextStyle(fontSize: 25),
                  ))
            ],
          ),
        ));
  }
}
// class HomeStatefulView extends GetView<HomeStatefulController> {
//   const HomeStatefulView({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('HomeStatefulView'),
//         centerTitle: true,
//       ),
//       body: const Center(
//         child: Text(
//           'HomeStatefulView is working',
//           style: TextStyle(fontSize: 20),
//         ),
//       ),
//     );
//   }
// }
