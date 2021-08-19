import 'package:caleb_zuri_flutter_registration_app/print_name/print_name.dart';
import 'package:caleb_zuri_flutter_registration_app/user_input/user_input.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HNG Mobile Registration Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Color(0xFFF0F2F5),
        primarySwatch: Colors.blue,
      ),
      home: UserInput(),
    );
  }
}

