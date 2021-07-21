import 'package:flutter/material.dart';
import 'package:booking_app/vehicles.dart';
import 'package:booking_app/vehicle_confirmation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routes Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => Vehicles(),
        '/vehicle-confirmation': (BuildContext context) =>
            VehicleConfirmation(),
      },
    );
  }
}
