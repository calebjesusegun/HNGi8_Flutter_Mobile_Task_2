import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

class UserOutput extends StatefulWidget {
  final String nameValue;
  final String emailValue;
  final String numberValue;
  final String trackValue;

  const UserOutput(
      {Key? key,
      required this.nameValue,
      required this.emailValue,
      required this.numberValue,
      required this.trackValue})
      : super(key: key);

  @override
  _UserOutputState createState() => _UserOutputState();
}

class _UserOutputState extends State<UserOutput> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            brightness: Brightness.light,
            backgroundColor: Color.fromRGBO(247, 243, 242, 1.0),
            title: Text(
              'HNGi8 x I4G',
              style: const TextStyle(
                color: Color.fromRGBO(135, 128, 128, 1.0),
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                letterSpacing: -1.2,
              ),
            ),
            centerTitle: false,
            floating: true,
            actions: [
              InkWell(
                onTap: () => launch('https://training.zuri.team'),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Container(
                    //width: width,
                    //height: height * .085,
                    child: Image.asset(
                      'assets/images/hngi8 x i4G.png',
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () => launch('https://training.zuri.team'),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 0.0, right: 15.0, top: 10.0, bottom: 10.0),
                  child: Container(
                    //width: width,
                    //height: height * .085,
                    child: Image.asset(
                      'assets/images/zuri.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              width: width,
              height: height * 0.8,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      'YOUR REGISTRATION WAS SUCCESSFUL!!!',
                      style: const TextStyle(
                        color: Color.fromRGBO(231, 51, 43, 1.0),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0.2,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => launch('https://training.zuri.team'),
                    child: Text(
                      'https://training.zuri.team',
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 11.00,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.08),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Full Name:',
                                      style: TextStyle(
                                        color: Colors.grey[500],
                                        fontSize: 12.00,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Montserrat',
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '${widget.nameValue}',
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 14.00,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Montserrat',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: height * 0.03),
                            Container(
                              padding: EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Email Address:',
                                      style: TextStyle(
                                        color: Colors.grey[500],
                                        fontSize: 12.00,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Montserrat',
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '${widget.emailValue}',
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 14.00,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Montserrat',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: height * 0.03),
                            Container(
                              padding: EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Phone Number:',
                                      style: TextStyle(
                                        color: Colors.grey[500],
                                        fontSize: 12.00,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Montserrat',
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '${widget.numberValue}',
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 14.00,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Montserrat',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: height * 0.03),
                            Container(
                              padding: EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Preferred Language:',
                                      style: TextStyle(
                                        color: Colors.grey[500],
                                        fontSize: 12.00,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Montserrat',
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '${widget.trackValue}',
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 14.00,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Montserrat',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.07),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(231, 51, 43, 1.0),
                            onPrimary: Colors.white,
                            //shadowColor: tertiaryColor2,
                            elevation: 1,
                            // shape: RoundedRectangleBorder(
                            //     borderRadius: BorderRadius.circular(32.0)),
                            minimumSize: Size(
                                width * 0.86, height * 0.062), //////// HERE
                          ),
                          onPressed: () {
                            setState(() {
                              Navigator.pop(context);
                            });
                          },
                          child: Text(
                            'BACK',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.00,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
