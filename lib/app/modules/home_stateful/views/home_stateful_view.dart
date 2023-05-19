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
  HttpStateful dataResponse2 = HttpStateful();
  HttpStateful dataResponse3 = HttpStateful();
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
            mainAxisAlignment: MainAxisAlignment.start,
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
                  ),
                ),
              OutlinedButton(
                  onPressed: () {
                    HttpStateful.konekAPI("2")
                    .then((value) {

                      // setstate
                      // print(value);
                      setState(() {
                        dataResponse2 = value;
                      });
                    }); //.then((value) {
                    // });
                  },
                  child: Text(
                    "GET DATA",
                    style: TextStyle(fontSize: 25),
                  ),
                ),

                // SHOWAN = -=-=-=-==-=--=-=--=-=-=-==-=--=-=--=-=-=-==-=--=-=--=-=-=-==-=--=-=--=-=-=-==-=--=-=--=-=-=-==-=--=-=-
                FittedBox(
                child: Text(
                  (dataResponse2.email == 0)
                      ? "NPP : Belum ada data"
                      : "NPP : ${dataResponse2.email}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 20),
              FittedBox(
                child: Text(
                  (dataResponse2.fullname == 0)
                      ? "NAMA : Belum ada data"
                      : "NAMA : ${dataResponse2.fullname}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 20),
              FittedBox(
                child: Text(
                  (dataResponse2.aidi == 0)
                      ? "SPV : Belum ada data"
                      : "SPV : ${dataResponse2.aidi}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              OutlinedButton(
                  onPressed: () {
                    HttpStateful.oracleAPI()
                    .then((value) {
                      setState(() {
                        dataResponse3=value;
                      });
                    });
                  },
                  child: Text(
                    "GET ORACLE DATA",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              SizedBox(height: 20),
              FittedBox(
                child: Text(
                  (dataResponse3.id_karyawan == "")
                      ? "Id_karyawan : Belum ada data"
                      : "Id_karyawan : ${dataResponse3.id_karyawan}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 20),
              FittedBox(
                child: Text(
                  (dataResponse3.nama == "")
                      ? "NAMA : Belum ada data"
                      : "NAMA : ${dataResponse3.nama}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 20),
              FittedBox(
                child: Text(
                  (dataResponse3.alamat == "")
                      ? "ALAMAT : Belum ada data"
                      : "ALAMAT : ${dataResponse3.alamat}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 20),
              FittedBox(
                child: Text(
                  (dataResponse3.telp == "")
                      ? "TELP : Belum ada data"
                      : "TELP : ${dataResponse3.telp}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 20),
              FittedBox(
                child: Text(
                  (dataResponse3.branch == "")
                      ? "BRANCH : Belum ada data"
                      : "BRANCH : ${dataResponse3.branch}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 20),
              FittedBox(
                child: Text(
                  (dataResponse3.spv == "")
                      ? "SPV : Belum ada data"
                      : "SPV : ${dataResponse3.spv}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              
                // SHOWAN-=-=-=-==-=--=-=--=-=-=-==-=--=-=--=-=-=-==-=--=-=--=-=-=-==-=--=-=--=-=-=-==-=--=-=--=-=-=-==-=--=-=-
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
