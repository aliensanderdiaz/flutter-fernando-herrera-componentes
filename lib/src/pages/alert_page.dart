import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert')
      ),
      body: Center(
        child: Text('Alert Page')
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.assignment_return),
        onPressed: () {
          Navigator.pop(context);
        }
      ),
    );
  }
}