import 'package:caleb_zuri_flutter_registration_app/user_input/user_output.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

class UserInput extends StatefulWidget {
  const UserInput({Key? key}) : super(key: key);

  @override
  _UserInputState createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {
  var _nameCon = new TextEditingController();
  var _emailCon = new TextEditingController();
  var _numberCon = new TextEditingController();
  var _trackCon = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverAppBar(
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
                      'ZURI MOBILE ENROLLMENT FOR 2022',
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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: width * 0.86,
                        height: height * 0.085,
                        child: TextField(
                          controller: _nameCon,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[200],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 25,
                              vertical: 0,
                            ),
                            hintText: 'Full Name',
                            hintStyle: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 14.00,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: width * 0.86,
                        height: height * 0.085,
                        child: TextField(
                          controller: _emailCon,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[200],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 25,
                              vertical: 0,
                            ),
                            hintText: 'Email Address',
                            hintStyle: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 14.00,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: width * 0.86,
                        height: height * 0.085,
                        child: TextField(
                          controller: _numberCon,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[200],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 25,
                              vertical: 0,
                            ),
                            hintText: 'Phone Number',
                            hintStyle: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 14.00,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: width * 0.86,
                        height: height * 0.085,
                        child: TextField(
                          controller: _trackCon,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[200],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 25,
                              vertical: 0,
                            ),
                            hintText: 'Preffered Mobile Language',
                            hintStyle: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 14.00,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(231, 51, 43, 1.0),
                          onPrimary: Colors.white,
                          //shadowColor: tertiaryColor2,
                          elevation: 1,
                          // shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.circular(32.0)),
                          minimumSize:
                              Size(width * 0.86, height * 0.062), //////// HERE
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UserOutput(
                                      nameValue: _nameCon.text,
                                      emailValue: _emailCon.text,
                                      numberValue: _numberCon.text,
                                      trackValue: _trackCon.text,
                                    )),
                          );
                        },
                        child: Text(
                          'ENROLL',
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
