import 'package:flutter/material.dart';
import 'package:icodegram_app/pages/home_screen.dart';
import 'package:icodegram_app/pages/login.dart';
import 'package:icodegram_app/resources/auth_methods.dart';
import 'package:icodegram_app/components/text_field_input.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Container(),
                flex: 2,
              ),
              Text(
                'iCodegram',
                style: TextStyle(
                    color: Colors.white, fontSize: 34, fontFamily: 'Lobster'),
              ),
              SizedBox(
                height: 64,
              ),
              TextFieldInput(
                hintText: 'Утасны дугаар',
                isPassword: false,
                textEditingController: _emailController,
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 24,
              ),
              TextFieldInput(
                hintText: 'Хэрэглэгчийн нэр',
                isPassword: false,
                textEditingController: _userNameController,
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 24,
              ),
              TextFieldInput(
                hintText: 'Нууц үг',
                isPassword: true,
                textEditingController: _passwordController,
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 24,
              ),
              TextFieldInput(
                hintText: 'Нууц үг давтах',
                isPassword: true,
                textEditingController: _passwordController,
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () async {
                  String result = await AuthMethods().signUpUser(
                      email: _emailController.text,
                      password: _passwordController.text,
                      username: _userNameController.text);
                  if (result == 'success') {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  } else {
                    print(result);
                  }
                },
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    color: Colors.orange,
                  ),
                  child: Text(
                    'Бүртгүүлэх',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Flexible(
                child: Container(),
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
