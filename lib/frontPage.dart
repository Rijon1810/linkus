import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isRememberMe = false;

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 50,
          width: 340,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.email,
                  color: Color(0xFFF50057),
                ),
                hintText: 'Email',
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
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 50,
          width: 340,
          child: TextField(
            //keyboardType: TextInputType.emailAddress,
            obscureText: true,
            style: TextStyle(color: Colors.black26),
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
                hintStyle: TextStyle(color: Color(0xFFF50057), fontSize: 15)),
          ),
        ),
      ],
    );
  }

  Widget buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7, horizontal: 10),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () => print('Login Pressed'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        color: Color(0xFFF50057),
        child: Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Widget buildSignUpBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () => print('Signup Pressed'),
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Colors.white,
        child: Text(
          'Sign in',
          style: TextStyle(
            color: Color(0xFFF50057),
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Widget FaceBookBtn() {
    return Container(
      margin: EdgeInsets.only(left: 40),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 2),
      width: 50,
      child: RaisedButton(
        elevation: 5,
        onPressed: () => print('Signup Pressed'),
        padding: EdgeInsets.symmetric(horizontal: 5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Icon(Icons.facebook_outlined, color: Colors.blue),
            ),
            SizedBox(width: 5),
            Text(
              'Facebook',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 15,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget GoogleBtn() {
    return Container(
      margin: EdgeInsets.only(right: 40),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 2),
      width: 50,
      child: RaisedButton(
        elevation: 5,
        onPressed: () => print('Signup Pressed'),
        padding: EdgeInsets.symmetric(horizontal: 5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Icon(Icons.face_outlined, color: Colors.blue),
            ),
            SizedBox(width: 5),
            Text(
              'Google',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 15,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/login_background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  height: 245,
                  width: 350,
                  image: AssetImage("assets/images/logo_white.png"),
                ),
                SizedBox(height: 5),
                buildEmail(),
                SizedBox(height: 2),
                buildPassword(),
                SizedBox(height: 7),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                buildLoginBtn(),
                SizedBox(height: 7),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have any account?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      'Sign-up?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  'or Connect with',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: FaceBookBtn(),
                    ),
                    Expanded(
                      child: GoogleBtn(),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
