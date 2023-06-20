// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names, unused_import, implementation_imports, unnecessary_import, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
        ),
      ),
    );
  }
}
