import 'package:driver/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool nameFlag = false;
  bool phoneFlag = false;
  bool emailFlag = false;
  bool passFlag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Register as driver',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              h20,
              Form(
                key: formKey,
                child: Column(children: [
                  TextFormField(
                    validator: nameValidation,
                    controller: nameController,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        suffixIcon: Icon(
                          Icons.check_circle,
                          color: nameFlag == true ? Colors.green : Colors.grey,
                        ),
                        border: OutlineInputBorder(),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .grey), // Set border color when the TextField is enabled
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .blue), // Set border color when the TextField is focused
                        ),
                        // suffixIcon: Icon(
                        //   Icons.person_2_rounded,
                        //   size: 30,
                        // ),
                        label: Text(
                          'Name',
                        )),
                  ),
                  h20,
                  TextFormField(
                    inputFormatters: [LengthLimitingTextInputFormatter(10)],
                    validator: validatePhoneNumber,
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.check_circle,
                          color: phoneFlag == true ? Colors.green : Colors.grey,
                        ),
                        border: OutlineInputBorder(),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .grey), // Set border color when the TextField is enabled
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .blue), // Set border color when the TextField is focused
                        ),
                        prefixIcon: Icon(
                          Icons.phone,
                        ),
                        label: Text(
                          'Phone',
                        )),
                  ),
                  h20,
                  TextFormField(
                    validator: emailVlidation,
                    controller: emailController,
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.check_circle,
                          color: emailFlag == true ? Colors.green : Colors.grey,
                        ),
                        border: OutlineInputBorder(),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .grey), // Set border color when the TextField is enabled
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .blue), // Set border color when the TextField is focused
                        ),
                        prefixIcon: Icon(Icons.email_rounded),
                        label: Text(
                          'Email',
                        )),
                  ),
                  h20,
                  TextFormField(
                    obscureText: true,
                    validator: passVailidation,
                    controller: passwordController,
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.check_circle,
                          color: passFlag == true ? Colors.green : Colors.grey,
                        ),
                        border: OutlineInputBorder(),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .grey), // Set border color when the TextField is enabled
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .blue), // Set border color when the TextField is focused
                        ),
                        prefixIcon: Icon(Icons.remove_red_eye),
                        label: Text(
                          'Pasword',
                        )),
                  ),
                  h50,
                  ElevatedButton(onPressed: submitForm, child: Text('Submit'))
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String? nameValidation(String? value) {
    if (value!.isEmpty) {
      setState(() {
        nameFlag = false;
      });
      return 'Please Enter your Name';
    } else if (value.length < 3) {
      setState(() {
        nameFlag = false;
      });
      return 'Please Enter Valid Name ';
    } else {
      setState(() {
        nameFlag = true;
      });
      return null;
    }
  }

  String? validatePhoneNumber(String? value) {
    if (value!.isEmpty) {
      setState(() {
        phoneFlag = false;
      });
      return 'Enter Your Phone Number ';
    } else if (value.length < 10) {
      setState(() {
        phoneFlag = false;
      });
      return ' Please Enter Your Valid Phone Number';
    } else {
      setState(() {
        phoneFlag = true;
      });
      return null;
    }
  }

  submitForm() {
    if (formKey.currentState!.validate()) {
      print('Form submited');
    }
  }

  String? emailVlidation(String? value) {
    final RegExp emailRegExp =
        RegExp(r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$');
    if (value!.isEmpty) {
      setState(() {
        emailFlag = false;
      });
      return 'Please enter an email address';
    } else if (!emailRegExp.hasMatch(value)) {
       setState(() {
        emailFlag = false;
      });
      return 'Please enter a valid email address';
    } else {
      setState(() {
        emailFlag = true;
      });
      return null;
    }
  }

  String? passVailidation(String? value) {
    if (value!.isEmpty) {
       setState(() {
        passFlag = false;
      });
      return 'Please enter a password';
    } else {
      setState(() {
        passFlag = true;
      });
      return null;
    }
  }
}
