import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrintName extends StatefulWidget {
  const PrintName({Key? key}) : super(key: key);

  @override
  _PrintNameState createState() => _PrintNameState();
}

class _PrintNameState extends State<PrintName> {
  @override
  Widget build(BuildContext context) {
    print('CALEB JESUSEGUN');
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300],
        ),
        child: Center(
            child: Text(
          "CALEB JESUSEGUN",
          style: const TextStyle(
            color: Color.fromRGBO(231, 51, 43, 1.0),
            fontSize: 22.0,
            fontWeight: FontWeight.w300,
            letterSpacing: 0.2,
          ),
        )),
      ),
    );
  }
}
