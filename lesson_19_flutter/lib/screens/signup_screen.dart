import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lesson_19_flutter/components/text_field_input.dart';
import 'package:lesson_19_flutter/resources/auth_methods.dart';
import 'package:lesson_19_flutter/utils/utils.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  Uint8List? _image;
  void selectImage() async {
    Uint8List image = await pickImage(ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }
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
                  fontSize: 34,
                ),
              ),
              Stack(
                children: [
                  _image != null ? CircleAvatar(radius: 64, backgroundImage: MemoryImage(_image!)) : CircleAvatar(radius: 64, backgroundImage: NetworkImage('https://toppng.com/uploads/preview/instagram-default-profile-picture-11562973083brycehrmyv.png')),
                  Positioned(bottom: -10, left: 80, child: IconButton(icon: Icon(Icons.add_a_photo), onPressed: selectImage))
                ],
              ),
              SizedBox(
                height: 64,
              ),
              TextFieldInput(
                hintText: 'Утасны дугаар',
                isPassword: false,
                textEditingController: _emailController, textInputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 24,
              ),
              TextFieldInput(
                hintText: 'Хэрэглэгчийн нэр',
                isPassword: false,
                textEditingController: _userNameController, textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 24,
              ),
              TextFieldInput(
                hintText: 'Нууц үг',
                isPassword: true,
                textEditingController: _passwordController, textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 24,
              ),
              TextFieldInput(
                hintText: 'Нууц үг давтах',
                isPassword: true,
                textEditingController: _passwordController, textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () => {
                  AuthMethods().signUpUser(
                      email: _emailController.text,
                      password: _passwordController.text,
                      username: _userNameController.text,)
                },
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    color: Colors.blue,
                  ),
                  child: Text('Бүртгүүлэх'),
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
