import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../assets/utils/Colors.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key);

  LoginController login = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 54),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "My Libary",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Apps",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Image(image: AssetImage("lib/assets/img/BookLogin.png")),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: TextStyle(
                      color: Color(0xFF3D4A5C),
                    ),
                  ),
                  SizedBox(height: 6),
                  TextField(
                    controller: login.email,
                    autocorrect: false,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                      hintText: "Enter your email",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Password",
                    style: TextStyle(
                      color: Color(0xFF3D4A5C),
                    ),
                  ),
                  SizedBox(height: 6),
                  TextField(
                    controller: login.password,
                    autocorrect: false,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline),
                      hintText: "Enter your Password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CheckboxMenuButton(
                    value: true,
                    style: ButtonStyle(
                      padding: MaterialStatePropertyAll(
                        EdgeInsets.only(left: 0),
                      ),
                      surfaceTintColor: MaterialStatePropertyAll(Colors.red),
                    ),
                    onChanged: (value) {},
                    child: Text("Remember Me"),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(
                        color: Color(0xFF000000).withOpacity(0.3),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: Ink(
                  height: 48,
                  width: 99,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    onTap: () {
                      login.Login();
                    },
                    borderRadius: BorderRadius.circular(10),
                    hoverColor: Color.fromARGB(255, 10, 46, 175),
                    splashColor: Color.fromARGB(255, 10, 46, 175),
                    child: const Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text("Don't have an account yet?"),
                  InkWell(
                    onTap: () {
                      // Register Page
                    },
                    child: const Text(
                      " Register here",
                      style: TextStyle(color: primaryColor),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  "Or Login with",
                  style: TextStyle(color: Colors.black.withOpacity(0.3)),
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: InkWell(
                  onTap: () {
                    // Clicked
                  },
                  child: Image(
                    image: AssetImage("lib/assets/img/Google.png"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
