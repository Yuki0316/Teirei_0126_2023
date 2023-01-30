import 'package:flutter/material.dart';
import 'package:teirei_126/parts.dart';

import 'divider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<bool> _switchValues = List.generate(7, (_) => false);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xffF2F1F7),
        appBar: AppBar(
          leadingWidth: 110,
          leading: TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.chevron_left),
            label: const Text('Settings'),
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.zero),
              minimumSize: MaterialStateProperty.all(Size.zero),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
          ),
          backgroundColor: Colors.white,
          title: const Text(
            'Safari',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0.5,
        ),
        body: Column(
          children: <Widget>[
            Container(
                width: 390,
                height: 340,
                margin:
                    const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: const [
                    Parts(
                      article: ('Prevent Cross-Site Tracking'),
                    ),
                    Divide(),
                    Parts(
                      article: ('Hide IP Address'),
                    ),
                    Divide(),
                    Parts(
                      article: ('Block All Cookies'),
                    ),
                    Divide(),
                    Parts(
                      article: ('Fraudulent Website Warning'),
                    ),
                    Divide(),
                    Parts(
                      article: ('Privacy Preserving Ad Measurement'),
                    ),
                    Divide(),
                    Parts(
                      article: ('Check for Apple Pay'),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
