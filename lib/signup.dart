import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  static const String id = 'sign_up';
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(30.0, 110.0, 0.0, 0.0),
                  child: Image.asset('assets/images/logoonly.png'),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(150.0, 100.0, 0.0, 0.0),
                  child: Text('Read',
                      style: TextStyle(
                          fontSize: 55.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffF5C149))),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(150.0, 145.0, 0.0, 0.0),
                  child: Text('Me',
                      style: TextStyle(
                          fontSize: 55.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffF5C149))),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    labelText: 'USER NAME',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Color(0xff332D8C)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff332D8C))),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffF5C149))),
                  ),
                ),
                SizedBox(height: 10.0),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'EMAIL ',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Color(0xff332D8C)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff332D8C))),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffF5C149))),
                  ),
                ),
                SizedBox(height: 10.0),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'PASSWORD ',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Color(0xff332D8C)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff332D8C))),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffF5C149))),
                  ),
                ),
                SizedBox(height: 50.0),
                Container(
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Color(0xff332D8C),
                    color: Color(0xff332D8C),
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {},
                      child: Center(
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 40.0,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 1.0),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Center(
                        child: Text('Go Back',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat')),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
