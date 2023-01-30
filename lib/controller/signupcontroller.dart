import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  late TextEditingController emailController, passwordController;
  var email = '';
  var password = '';

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
  }

  bool validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return false;
    }
    return true;
  }

  bool validatePassword(String value) {
    if (value.length < 8) {
      return false;
    }
    checkLogin();
    return true;
  }

  void checkLogin() {
    final isValid = loginFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    loginFormKey.currentState!.save();
  }
}
