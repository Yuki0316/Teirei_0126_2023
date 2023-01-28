import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> contents = <String>[
      'Prevent Cross-Site Tracking',
      'Hide IP Address',
      'Block All Cookies',
      'Fraudulent Website Warning',
      'Privacy Preserving Ad Measurement',
      'Check for Apple Pay'
    ];

    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xffF2F1F7),
        appBar: AppBar(
          leadingWidth: 120,
          leading: TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.chevron_left),
            label: const Text('Settings'),
          ),
          backgroundColor: Colors.white,
          title: const Text(
            'Safari',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0.5,
        ),
        body: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                width: 390,
                height: 270,
                margin:
                    const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: contents.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 28,
                            alignment: Alignment.centerLeft,
                            child: Text(contents[index]),
                          ),
                        ]);
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
