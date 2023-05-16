import 'package:flutter/material.dart';
import 'package:flutter_getx/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/snackbarstyle_controller.dart';

class SnackbarstyleView extends GetView<SnackbarstyleController> {
  const SnackbarstyleView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeView'),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Get.offAllNamed(Routes.home);
              },
              icon: Icon(Icons.arrow_back_ios_new)),
        ),
        body: ListView(
          // scrollDirection: Axis.horizontal,
          children: <Widget>[
            Row(
              children: [
                Container(
                  // color: Colors.amber,
                  padding: EdgeInsets.only(left: 10, right: 10, top: 4),
                  margin: const EdgeInsets.only(top: 0),
                  child: ElevatedButton(
                    onPressed: () {
                      cobafunction(context);
                    },
                    child: Text("Click snackbar 1"),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  // color: Colors.purpleAccent,
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: ElevatedButton(
                    onPressed: () => functAlert1(context),
                    child: Text("Alert 1"),
                  ),
                ),
                Container(
                  // color: Colors.purpleAccent,
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: ElevatedButton(
                    onPressed: () => {},
                    child: Text("unknow"),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

cobafunction(context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: const Text('Awesome Snackbar!'),
      action: SnackBarAction(
        label: 'Action',
        onPressed: () {
          // Code to execute.
        },
      ),
    ),
  );
}

functAlert1(context) {
  showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text('AlertDialog Title'),
      content: const Text('AlertDialog description'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'Cancel'),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: const Text('OK'),
        ),
      ],
    ),
  );
}
