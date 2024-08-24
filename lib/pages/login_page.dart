import 'package:flutter/material.dart';

Color _primaryColor = Color.fromRGBO(100, 23, 45, 100);
Color _secondaryColor = Color.fromRGBO(0, 0, 0, 0);

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            _avatarWidget(),
          ],
        ),
      )
    );
  }
  
  
  Widget _avatarWidget(){
    double _circleD = _deviceHeight * 0.25;
    return Container(
      height: _circleD,
      width: _circleD,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(500),
          color: _secondaryColor,
          image: DecorationImage(
              image: AssetImage("assets/images/main_avatar.jpeg")
          )

      ),
      
    );
  }
}
