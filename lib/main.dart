import 'package:flutter/material.dart';
import 'package:payment_app/theme.dart';

void main() {
  runApp(PaymentApp());
}

class PaymentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color(0xff04112F),
          body: Padding(
            padding: const EdgeInsets.only(top: 50, left: 32, right: 32),
            child: Column(
              children: [
                Center(
                    child: Image.asset('assets/sample.png',
                        width: 267, height: 200)),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Row(children: [
                    Text('Upgrade to ', style: titleTextStyle),
                    Text('Pro', style: titleProTextStyle)
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                      'Go Unlock all features and build your own business bigger',
                      style: subTitleTextStyle,
                      textAlign: TextAlign.center),
                ),
              ],
            ),
          ),
        ));
  }
}
