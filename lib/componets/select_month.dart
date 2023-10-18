import 'package:flutter/material.dart';
import 'package:flutter_month_picker/flutter_month_picker.dart';
import 'package:intl/intl.dart';

class SelectMonth extends StatefulWidget {
  const SelectMonth({super.key});

  @override
  State<SelectMonth> createState() => _SelectMonthState();
}

class _SelectMonthState extends State<SelectMonth> {
  final String _month = DateFormat.yMMM().format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          height: 40,
          child: Center(
              child: TextButton(
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                padding: const EdgeInsets.all(10),
                textStyle: const TextStyle(fontSize: 20),
                backgroundColor: Colors.grey[900],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                alignment: Alignment.bottomCenter),
            onPressed: () {
              showMonthPicker(
                context: context,
                initialDate: DateTime.now(), // Today's date
                firstDate: DateTime(2000, 5), // Stating date : May 2000
                lastDate: DateTime(2050), // Ending date: Dec 2050
              );
            },
            child: Text('$_month'),
          )),
        ));
  }
}
