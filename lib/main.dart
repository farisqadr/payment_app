import 'package:flutter/material.dart';

void main() {
  runApp(PaymentApp());
}

class PaymentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Column(
          children: [Image.asset('assets/sample.png')],
        )));
  }
}
