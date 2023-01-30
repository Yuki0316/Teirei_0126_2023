import 'package:flutter/material.dart';

class Divide extends StatelessWidget {
  const Divide({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 0,
      thickness: 1,
      indent: 20,
      endIndent: 0,
      color: Color(0xffE4E4E5),
    );
  }
}
