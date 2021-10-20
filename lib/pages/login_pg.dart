import 'package:flutter/material.dart';
import 'package:flutter_application_1/utility/routes.dart';

class loginpg extends StatefulWidget {
  @override
  State<loginpg> createState() => _loginpgState();
}

class _loginpgState extends State<loginpg> {
  String name = "";
  bool changebtn = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/img/login_img.png",
                fit: BoxFit.cover,
                height: 300,
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    Text(
                      "Welcome $name",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter User_Name",
                        labelText: "User_Name",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Passcode",
                      ),
                    ),
                    SizedBox(height: 40.0),

                    InkWell(
                      onTap: () async {
                        setState(() {
                          changebtn = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
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
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius:
                              BorderRadius.circular(changebtn ? 50 : 8),
                        ),
                      ),
                    ),
                    //  ElevatedButton(
                    //    child: Text("LOGIN"),
                    //    style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    //     onPressed: () {
                    //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //     },
                    //   ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
