// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names, unused_import, implementation_imports, unnecessary_import, unused_local_variable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:rakmis_app/pages/hrService.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 151, 28, 6),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Home page'),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(25),
          child: ListView(
            children: [
              Card(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                  ),
                  child: ListTile(
                    textColor: Colors.white,
                    title: Center(
                        child: Text(
                      'HR Self Service',
                      style: TextStyle(fontSize: 30),
                    )),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HrSelfService()));
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Card(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                  ),
                  child: ListTile(
                    textColor: Colors.white,
                    title: Center(
                        child: Text(
                      'Business Solutions',
                      style: TextStyle(fontSize: 30),
                    )),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HrSelfService()));
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Card(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                  ),
                  child: ListTile(
                    textColor: Colors.white,
                    title: Center(
                        child: Text(
                      'Production',
                      style: TextStyle(fontSize: 30),
                    )),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HrSelfService()));
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Card(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                  ),
                  child: ListTile(
                    textColor: Colors.white,
                    title: Center(
                        child: Text(
                      'Requisitions',
                      style: TextStyle(fontSize: 30),
                    )),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HrSelfService()));
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
