import 'package:flutter/material.dart';
import 'package:list_tile_switch/list_tile_switch.dart';

class Parts extends StatefulWidget {
  const Parts({Key? key, required this.article}) : super(key: key);
  final String article;

  @override
  State<Parts> createState() => _PartsState();
}

class _PartsState extends State<Parts> {
  final List<bool> _switchValues = List.generate(6, (_) => false);

  @override
  Widget build(BuildContext context) {
    return ListTileSwitch(
      value: _switchValues[0],
      onChanged: (value) {
        setState(() {
          _switchValues[0] = value;
        });
      },
      contentPadding: const EdgeInsets.only(top: 0, left: 20, bottom: 0),
      switchActiveColor: const Color(0xff34C759),
      title: Text(
        widget.article,
        style: const TextStyle(fontSize: 15, color: Colors.black),
      ),
    );
  }
}
