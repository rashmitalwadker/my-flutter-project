import 'package:flutter/material.dart';
import 'package:flutter_app2/bgImage.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            BgImage(),
            Center(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Card(
                          child: Form(
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "enter ur name", labelText: "name"),
                            ),
                            SizedBox(height: 20.0),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: "enter ur password",
                                  labelText: "password"),
                            ),
                          ],
                        ),
                      )),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,MaterialPageRoute(builder:(context)=> HomePage()));
                          },
                          child: Text("SignIn"),
                          //color:Colors.purple[200],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ))
          ],
        ));
  }
}
