import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("iCodegram",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.5333366394043,
                    fontWeight: FontWeight.w400,
                  )),
              Container(
                padding: EdgeInsets.symmetric(vertical: 52, horizontal: 16),
                child: TextField(
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                ),
              ),
              TextField(
                decoration: InputDecoration(


                  )
                ),
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Нэвтрэх',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  )),
              Row(
                children: [
                  Text(
                    'Шинэ хэрэглэгч үү?',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Rubik',
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
