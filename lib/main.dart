import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'user.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<dynamic> users = [];
  @override
  void initState() {
    super.initState();
    getUsers();
  }

  Future<http.Response> fetchPost() {
    return http.get('http://dummy.restapiexample.com/api/v1/employees');
  }

  void getUsers() async {
    http.Response response = await fetchPost();
    if (response.statusCode == 200) {
      users = convert.jsonDecode(response.body);
    } else {
      print('error on response');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Users',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Fetch Users',
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            Text('These are the users: '),
            Expanded(
              child: (users.length > 0)
                  ? ListView.builder(
                      itemCount: users.length,
                      itemBuilder: (BuildContext context, int i) {
                        return User(
                          employeeName: users[i]['employee_name'],
                          employeeSalary: users[i]['employee_salary'],
                          employeeAge: users[i]['employee_age'],
                        );
                      },
                    )
                  : Container(),
            ),
          ],
        ),
      ),
    );
  }
}
