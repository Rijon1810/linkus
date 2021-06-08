import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

enum SingingCharacter { girl, boy }

class _LoginScreenState extends State<LoginScreen> {
  bool isRememberMe = false;
  SingingCharacter? _character = SingingCharacter.girl;
  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Card(
          margin: EdgeInsets.symmetric(vertical: 2, horizontal: 22),
          shadowColor: Color(0xFFF50057),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          elevation: 4,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                //contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Container(
                  child: Icon(
                    Icons.email_outlined,
                    color: Color(0xFFF50057),
                  ),
                ),
                hintText: 'Email',
                hintStyle: TextStyle(color: Color(0xFFF50057), fontSize: 15)),
          ),
        )
      ],
    );
  }

  Widget buildName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Card(
          margin: EdgeInsets.symmetric(vertical: 2, horizontal: 22),
          shadowColor: Color(0xFFF50057),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          elevation: 4,
          child: TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.account_circle_outlined,
                  color: Color(0xFFF50057),
                ),
                hintText: 'Name',
                hintStyle: TextStyle(color: Color(0xFFF50057), fontSize: 15)),
          ),
        )
      ],
    );
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Card(
          margin: EdgeInsets.symmetric(vertical: 2, horizontal: 22),
          shadowColor: Color(0xFFF50057),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          elevation: 4,
          child: TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.lock,
                color: Color(0xFFF50057),
              ),
              hintText: 'Password',
              suffixIcon: Icon(
                Icons.visibility,
                color: Color(0xFFF50057),
                size: 20,
              ),
              suffixText: '(8 to 16 digits)',
              hintStyle: TextStyle(color: Color(0xFFF50057), fontSize: 15),
            ),
          ),
        )
      ],
    );
  }

  Widget buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 22),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () => print('Login Pressed'),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        color: Color(0xFFF50057),
        child: Text(
          'Sign Up',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget buildSignUpBtn() {
    return GestureDetector(
      onTap: () => print('Log In Pressed'),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: "Already have an Account? ",
              style: TextStyle(
                color: Color(0xFFF50057),
                fontSize: 12,
              )),
          TextSpan(
              text: 'Log In',
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: Color(0xFFF50057),
                fontSize: 12,
              ))
        ]),
      ),
    );
  }

  Widget buildGender() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Image(
                height: 60,
                image: _character == SingingCharacter.boy
                    ? AssetImage("assets/images/male.png")
                    : AssetImage("assets/images/male_red.png"),
              ),
              Text(
                'Boy',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),
              Radio(
                value: SingingCharacter.girl,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  print(_character);
                  setState(() {
                    _character = value;
                  });
                },
              )
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Image(
                height: 60,
                image: _character == SingingCharacter.girl
                    ? AssetImage("assets/images/female.png")
                    : AssetImage("assets/images/female_red.png"),
              ),
              Text(
                'Girl',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),
              Radio(
                value: SingingCharacter.boy,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  print(_character);
                  setState(() {
                    _character = value;
                  });
                },
              )
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    Image(
                      image: AssetImage(
                          "assets/images/Image-for-login-screen-main.png"),
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 15),
                    buildName(),
                    SizedBox(height: 5),
                    buildEmail(),
                    SizedBox(height: 5),
                    buildPassword(),
                    SizedBox(height: 13),
                    buildGender(),
                    buildLoginBtn(),
                    SizedBox(height: 5),
                    buildSignUpBtn(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
