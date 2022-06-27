import 'package:flutter/material.dart';
import 'package:payment_app/theme.dart';

void main() {
  runApp(PaymentApp());
}

class PaymentApp extends StatefulWidget {
  @override
  State<PaymentApp> createState() => _PaymentAppState();
}

class _PaymentAppState extends State<PaymentApp> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    Widget option(int index) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
                color: selectedIndex == index
                    ? Color(0xff007DFF)
                    : Color(0xff4D5B70)),
          ),
        ),
      );
    }

    Widget header() {
      return Padding(
        padding: const EdgeInsets.only(top: 50, left: 32, right: 32),
        child: Column(
          children: [
            Center(
                child:
                    Image.asset('assets/sample.png', width: 267, height: 200)),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text('Upgrade to ', style: titleTextStyle),
              Text('Pro', style: titleProTextStyle)
            ]),
            const SizedBox(height: 16),
            Text('Go Unlock all features and build your own business bigger',
                style: subTitleTextStyle, textAlign: TextAlign.center),
          ],
        ),
      );
    }

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color(0xff04112F),
            body: Column(
              children: [header(), option(0), option(1), option(2)],
            )));
  }
}
