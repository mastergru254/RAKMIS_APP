// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HrSelfService extends StatefulWidget {
  const HrSelfService({super.key});

  @override
  State<HrSelfService> createState() => _HrSelfServiceState();
}

class _HrSelfServiceState extends State<HrSelfService> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Hr self service'),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )),
    );
  }
}
