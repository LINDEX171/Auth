import 'package:flutter/material.dart';

Color _primaryColor = Color.fromRGBO(125, 191, 211, 1.0);
Color _secondaryColor = Color.fromRGBO(169, 224, 241, 1.0);

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

var _deviceHeight;
var _deviceWidth;

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: _primaryColor,
        body: Align(
          alignment: Alignment.center,
          child: Container(
            height: _deviceHeight * 0.60,
            width: _deviceHeight * 0.055,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _avatarWidget(),
                SizedBox(height: _deviceHeight * 0.05,),
                _emailTextxField(),
                _passwordTextxField(),
                SizedBox(height: _deviceHeight * 0.10,),
                _loginButton()
              ],
            ),
          ),
        ));
  }

  Widget _avatarWidget() {
    double _circleD = _deviceHeight * 0.25;
    return Container(
      height: _circleD,
      width: _circleD,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(500),
          color: _secondaryColor,
          image: DecorationImage(
              image: AssetImage("assets/images/main_avatar.jpeg"))),
    );
  }

  Widget _emailTextxField() {
    return Container(
      width: _deviceWidth * 70,
      child: TextField(
        cursorColor: Colors.white,
        autocorrect: false,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            hintText: "lindex171@gmail.com",
            hintStyle: TextStyle(color: Colors.white),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white))),
      ),
    );
  }

  Widget _passwordTextxField() {
    return Container(
      width: _deviceWidth * 70,
      child: TextField(
        obscureText: true,
        cursorColor: Colors.white,
        autocorrect: false,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            hintText: "password",
            hintStyle: TextStyle(color: Colors.white),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white))),
      ),
    );
  }

  Widget _loginButton() {
    return MaterialButton(
        minWidth: _deviceWidth * 0.38,
        height: _deviceWidth * 0.12,
        color: Colors.white,
        child: Text(
          "LOG IN",
          style: TextStyle(color: _primaryColor, fontWeight: FontWeight.bold),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
            side: BorderSide(color: Colors.white)),
        onPressed: () {});
  }
}
