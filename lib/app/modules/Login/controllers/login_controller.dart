import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  RxBool isChecked = true.obs;

  void Login() {
    print(email.text);
  }
}
