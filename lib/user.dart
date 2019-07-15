import 'package:flutter/material.dart';

class User extends StatelessWidget {
  User({this.employeeName, this.employeeSalary, this.employeeAge});

  final String employeeName;
  final String employeeSalary;
  final String employeeAge;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Text('$employeeName'),
          Text('$employeeSalary'),
          Text('$employeeAge'),
        ],
      ),
    );
  }
}
