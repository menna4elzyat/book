import 'package:flutter/material.dart';

import 'Colors.dart';
import 'bottomDark.dart';

class Contact extends StatefulWidget {
  Contact({super.key});

  @override
  State<Contact> createState() => _SettingesState();
}

class _SettingesState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  IconButton(onPressed: () {
        setState(() {

        });
        mode1= ThemeMode.dark;

      }, icon: Icon(Icons.swap_horiz,color: Colors.black,)),
    );
  }
}
