import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';




class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _passcontroller=TextEditingController();
  TextEditingController _passcontrollertwo=TextEditingController();
  TextEditingController _namecontroller=TextEditingController();
  TextEditingController _phonecontroller=TextEditingController();
  TextEditingController _addresscontroller=TextEditingController();
  TextEditingController _dobcontroller=TextEditingController();


  Pattern pattern =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 28,
              ),
              Center(
                child: Text(
                  "Sign Up",
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
                      width: 170,
                      height: 1,
                      color: Colors.grey[300],
                    ),
                    Text(
                      '  Provide your Data  ',
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                    Container(
                      width: 172,
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
                      "Name",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    TextField(
                      controller: _namecontroller,
                      decoration: InputDecoration(
                        hintText: 'Good name',
                        hintStyle: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    Text(
                      "Phone No",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    TextField(
                      controller: _phonecontroller,
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 25),
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Stay Connected',
                        hintStyle: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    Text(
                      "Date of Birth",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    TextField(
                      controller: _dobcontroller,
                      decoration: InputDecoration(
                        hintText: 'dd//mm//yyyy',
                        hintStyle: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    Text(
                      "Address",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    TextField(
                      controller: _addresscontroller,
                      maxLines: 2,
                      decoration: InputDecoration(
                        hintText: 'Will meet soon',
                        hintStyle: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    Text(
                      "Password",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    TextField(
                      controller: _passcontroller,
                      obscureText: true,
                      decoration: InputDecoration(
                        suffix: Icon(Icons.remove_red_eye),
                        hintText: 'Enter new Password',
                        hintStyle: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    Text(
                      "Confirm Password",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),

                    TextField(
                      controller: _passcontrollertwo,
                      obscureText: true,
                      decoration: InputDecoration(
                        suffix: IconButton(icon: Icon(Icons.remove_red_eye), onPressed: () {

                        },
                        ),
                        hintText: 'Re-enter Password',
                        hintStyle: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 28,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),

              ElevatedButton(
                onPressed: () {

                  if(_namecontroller.text.isEmpty){
                    scaf.currentState!.showSnackBar(SnackBar(content: Text('Name cannot be empty')));

                  }

                  else if(_phonecontroller.text.isEmpty){
                    scaf.currentState!.showSnackBar(
                        SnackBar(content: Text('Phone number Cannot be empty'))
                    );

                  }
                  else if(_phonecontroller.text.length!=10){
                    scaf.currentState!.showSnackBar(
                        SnackBar(content: Text('Phone number must be 10 digits'))
                    );

                  }
                  else if(_dobcontroller.text.isEmpty){
                    scaf.currentState!.showSnackBar(
                        SnackBar(content: Text('DOB cannot be empty'))
                    );

                  }
                  else if(_addresscontroller.text.isEmpty){
                    scaf.currentState!.showSnackBar(
                        SnackBar(content: Text('Address cannot be empty'))
                    );

                  }

                  else if(_passcontroller.text.isEmpty){
                    scaf.currentState!.showSnackBar(
                        SnackBar(content: Text('Password cannot be empty'))
                    );

                  }
                  else if (_passcontroller.text.length<8){
                    scaf.currentState!.showSnackBar(
                        SnackBar(content: Text('Password Length must be greater than 8 characters'))
                    );

                  }
                  else if (!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(_passcontroller.text)){
                    scaf.currentState!.showSnackBar(
                        SnackBar(content: Text('Password pattern not matched'))
                    );

                  }
                  else if (_passcontroller.text!=_passcontrollertwo.text){
                    scaf.currentState!.showSnackBar(
                        SnackBar(content: Text('Password Mismatch'))
                    );

                  }
                  else{
                    scaf.currentState!.showSnackBar(
                        SnackBar(content: Text('Everything good to go'))
                    );

                  }


                },
                child: Container(
                  height: 45,
                  width: 350,
                  color: Colors.blue,
                  child: Center(child: Text('Sign Up')),
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
                    "Already have an account ?",
                    style: TextStyle(color: Colors.grey[400]),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            color: Colors.pink, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
