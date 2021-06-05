import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './signup.dart';

void main() {
  runApp(MyApp());
}
GlobalKey <ScaffoldMessengerState> scaf=GlobalKey <ScaffoldMessengerState>();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: scaf,
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                "Sign in",
                style: TextStyle(
                    fontSize: 60,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: 210,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/google.png',
                    height: 40,
                    width: 40,
                  ),
                  Image.asset(
                    'assets/facebook.png',
                    height: 40,
                    width: 40,
                  ),
                  Image.asset(
                    'assets/twitter.png',
                    height: 40,
                    width: 40,
                  ),
                  Icon(
                    Icons.call,
                    size: 40,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    width: 165,
                    height: 1,
                    color: Colors.grey[300],
                  ),
                  Text(
                    '  Or Sign in with Email  ',
                    style: TextStyle(color: Colors.grey[400]),
                  ),
                  Container(
                    width: 163,
                    height: 1,
                    color: Colors.grey[300],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Your Email',
                      hintStyle: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Password",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  TextField(
                    style: TextStyle(fontSize: 25),
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      hintStyle: TextStyle(
                        fontSize: 15,
                      ),
                      suffix: IconButton(
                        icon: Icon(
                          Icons.remove_red_eye,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    //   width: 400,
                    child: Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: null,
                        ),
                        Text(
                          'Keep me Logged in ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Spacer(
                          flex: 7,
                        ),
                        Text(
                          "Forget Password?",
                          style: TextStyle(
                              color: Colors.pink[500],
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Container(
                height: 45,
                width: 350,
                color: Colors.blue,
                child: Center(child: Text('Sign In')),
              ),
              style: ButtonStyle(),
            ),
            SizedBox(height: 15),
            Container(
                width: 400,
                child: Divider(
                  color: Colors.grey[400],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account ?",
                  style: TextStyle(color: Colors.grey[400]),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                            transitionDuration: Duration(milliseconds: 350),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              return ScaleTransition(
                                  child: child,
                                  scale: Tween(begin: 0.1, end: 1.0)
                                      .animate(animation));
                            },
                            pageBuilder:
                                (context, animation, secondaryAnimation) {
                              return SignUp();
                            },
                          ));
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.pink, fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
