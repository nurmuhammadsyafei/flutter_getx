import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/datepicker_controller.dart';

class DatepickerView extends StatefulWidget {
  const DatepickerView({super.key});

  @override
  State<DatepickerView> createState() => _DatepickerViewState();
}

class _DatepickerViewState extends State<DatepickerView> {
  TextEditingController SelectDate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('DatepickerView'),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: TextField(
            controller: SelectDate,
            onTap: () async {
              DateTime? pickeddate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2101),
              );
              if (pickeddate != null) {
                setState(() {
                  SelectDate.text = DateFormat("yyyy-MM-dd").format(pickeddate);
                });
              }
            },
          ),
        ));
  }
}
