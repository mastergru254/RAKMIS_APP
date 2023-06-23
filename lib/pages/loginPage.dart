// ignore_for_file: implementation_imports, unused_import, unnecessary_import, file_names, unused_local_variable, unnecessary_const, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:rakmis_app/pages/homePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 151, 28, 6),
          appBar: AppBar(
            centerTitle: true,
            title: Text('login page'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Logo',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              hintText: 'Enter email',
                              prefixIcon: Icon(Icons.email),
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (String value) {},
                            validator: (value) {
                              return value!.isEmpty
                                  ? 'please enter email'
                                  : null;
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              hintText: 'Enter password',
                              prefixIcon: Icon(Icons.password),
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (String value) {},
                            validator: (value) {
                              return value!.isEmpty
                                  ? 'please enter password'
                                  : null;
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          color: Colors.teal,
                          textColor: Colors.white,
                          child: Text('Login'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
