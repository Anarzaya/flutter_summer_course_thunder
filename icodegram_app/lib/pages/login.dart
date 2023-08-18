import 'package:flutter/material.dart';
import 'package:icodegram_app/components/text_field_input.dart';
import 'package:icodegram_app/resources/auth_methods.dart';
import 'package:icodegram_app/pages/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isLoading = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void loginUser() async {
    setState(() {
      _isLoading = true;
    });
    String result = await AuthMethods().loginUser(
        email: _emailController.text, password: _passwordController.text);
    if (result == 'success') {
      setState(() {
        _isLoading = false;
      });
      print('Logged in');
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } else {
      print('Not logged in');
    }
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
                flex: 2,
                child: Container(),
              ),
              Text('iCodegram', style: TextStyle(color: Colors.white, fontFamily: 'Lobster', fontSize: 34),
              ),
              SizedBox(height: 64),
              TextFieldInput(
                  hintText: 'И-мейл хаяг',
                  isPassword: false,
                  textEditingController: _emailController,
                  textInputType: TextInputType.emailAddress),
              SizedBox(height: 24),
              TextFieldInput(
                  hintText: 'Нууц үг',
                  isPassword: true,
                  textEditingController: _passwordController,
                  textInputType: TextInputType.text),
              SizedBox(height: 24),
              InkWell(
                onTap: loginUser,
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      color: Colors.orange),
                  child: Center(
                    child: _isLoading ? Center ( child : CircularProgressIndicator(color: Colors.white)) : Text('Нэвтрэх') ,
                  ),
                ),
              ),
              SizedBox(height: 12),
              Flexible(flex: 2, child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}