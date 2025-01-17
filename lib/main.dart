import 'package:flutter/material.dart';
import 'package:invoiceui/view/Register.dart';
import 'package:invoiceui/view/checking.dart';
import 'package:invoiceui/view/login.dart';
import 'package:invoiceui/view/profile.dart';
import 'package:invoiceui/view/revenue.dart';
import 'package:invoiceui/view/update.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple,brightness: Brightness.dark),
        useMaterial3: true,
      ),
      home: const Loginui()
    );
  }
}
