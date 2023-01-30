import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:leafboard/controller/signupcontroller.dart';
import 'package:leafboard/controller/visibilitycontroller.dart';
import 'package:leafboard/customcomponents/custombutton.dart';
import 'package:leafboard/customcomponents/customcolors.dart';
import 'package:leafboard/customcomponents/customtitle.dart';
import 'package:leafboard/customcomponents/signup/signupwith.dart';

class Signup extends GetView<VisibilityController> {
  final visibilityController = Get.put(VisibilityController());
  final signupController = Get.put(SignupController());

  Signup({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var isEmailValid = false;
    var isPasswordValid = false;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            color: ThemeColors.grey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: height / 10),
                    const CustomTitle(),

                    //Custom Text Field Mail and password
                    SizedBox(height: height / 15),
                    const Text(
                      'Your Email address',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: height / 80),
                    //Mail
                    SizedBox(
                      height: 55,
                      child: TextFormField(
                        obscureText: false,
                        onChanged: (value) {
                          if (signupController.validateEmail(value)) {
                            signupController.email = value;
                            isEmailValid = true;
                          }
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade400),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50)),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black54),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          fillColor: ThemeColors.grey,
                          filled: true,
                          hintText: 'abc@gmail.com',
                          hintStyle: TextStyle(
                            color: Colors.grey.shade400,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: height / 30),
                    const Text(
                      'Choose a password',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: height / 80),
                    //password
                    SizedBox(
                      height: 55,
                      child: Obx(
                        () => TextFormField(
                          obscureText: controller.isPasswordHidden.value,
                          onFieldSubmitted: (value) {
                            if (signupController.validatePassword(value)) {
                              signupController.password = value;
                              isPasswordValid = true;
                              print(signupController.password);
                            }
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade400),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(50)),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black54),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                            fillColor: ThemeColors.grey,
                            filled: true,
                            hintText: 'min 8 charecters',
                            hintStyle: TextStyle(
                              color: Colors.grey.shade400,
                            ),
                            suffixIcon: InkWell(
                              child: Icon(
                                controller.isPasswordHidden.value
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.grey,
                              ),
                              onTap: () {
                                controller.isPasswordHidden.value =
                                    !controller.isPasswordHidden.value;
                              },
                            ),
                          ),
                        ),
                      ),
                    ),

                    //continue button
                    SizedBox(height: height / 30),
                    Center(
                      child: CustomButton(
                        text: 'Continue',
                        width: 350,
                        onTap: isEmailValid && isPasswordValid
                            ? () {
                                print('continue');
                              }
                            : null,
                      ),
                    ),

                    //or
                    SizedBox(height: height / 30),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'or',
                            style: TextStyle(
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),

                    // sign up with buttons
                    SizedBox(height: height / 30),

                    const SignUpWith(
                      text: 'Sign up with Google',
                      imagePath: 'assets/google.png',
                    ),

                    SizedBox(height: height / 50),

                    const SignUpWith(
                      text: 'Sign up with Apple',
                      imagePath: 'assets/apple.png',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
