// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_pages.png",
              fit: BoxFit.cover,
              height: 300,
            ),
            SizedBox(height: 30.0),
            Text(
              "Welcome",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.0),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Username", labelText: "UserName"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(height: 30.0),
                  ElevatedButton(
                    child: Text("Submit"),
                    style: TextButton.styleFrom(minimumSize: Size(120, 40)),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
