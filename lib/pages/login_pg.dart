import 'package:flutter/material.dart';
import 'package:flutter_application_1/utility/routes.dart';

class loginpg extends StatefulWidget {
  @override
  State<loginpg> createState() => _loginpgState();
}

class _loginpgState extends State<loginpg> {
  String name = "";
  bool changebtn = false;
  final _formkey = GlobalKey<FormState>();

  moveTohome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebtn = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changebtn = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Image.asset(
                  "assets/img/login.png",
                  fit: BoxFit.cover,
                  height: 300,
                ),
                SizedBox(height: 20.0),
                Text(
                  "Welcome $name",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter User_Name",
                          labelText: "User_Name",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username is required";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Passcode",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Pasword is required";
                          } else if (value.length < 6) {
                            return "[password length should be atleast 6]";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 40.0),
                      Material(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(changebtn ? 50 : 8),
                        child: InkWell(
                          onTap: () async => moveTohome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changebtn ? 50 : 150,
                            height: 50,
                            alignment: Alignment.center,
                            child: changebtn
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
