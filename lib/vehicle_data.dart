import 'package:flutter/material.dart';
import 'package:booking_app/alert_dialog.dart';

class Vehicle extends StatelessWidget {
  const Vehicle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Container(
        padding: const EdgeInsets.all(8),
        child: const Text(
          "Car name",
          style: TextStyle(fontSize: 16.0),
        ),
      ),
      onPressed: () {
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialogWidget(),
        );
      },
    );
  }
}
