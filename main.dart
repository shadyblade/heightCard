import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xfff1f5f8),
        body: SafeArea(
          child: Container(
            constraints: const BoxConstraints.tightFor(
                width: double.infinity, height: 290),
            margin: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                  child: Text(
                    'Height as per your input - 90 cm',
                    style: kBoxTitleStyle,
                  ),
                ),
                const SizedBox(
                  height: 20,
                  width: double.maxFinite,
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 4),
                      child: Image.asset(
                        'images/bgimg.jpeg',
                        height: 200,
                        width: 210,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '155.4 cm',
                          style: kHeightTextStyle,
                        ),
                        Text(
                          '144.2 cm',
                          style: kHeightTextStyle,
                        ),
                        const SizedBox(
                          height: 140,
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(left: 16),
                          width: 80,
                          child: const Text(
                            'Ideal height range',
                            style: kSideTextStyle,
                          ),
                        ),
                        const SizedBox(
                          height: 120,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
