import 'package:flutter/material.dart';

class VehicleConfirmation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking successful'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Name, you have successfully booked a Mustang XYZ!"),
              SizedBox(
                height: 24.0,
              ),
              ElevatedButton(
// Within the SecondScreen widget
                onPressed: () {
// Navigate back to the first screen by popping the current route
// off the stack.
                  Navigator.pop(context);
                },
                child: Text('Book another vehicle'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
