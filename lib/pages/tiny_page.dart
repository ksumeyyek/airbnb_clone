import 'package:flutter/material.dart';

class TinyPage extends StatefulWidget {
  const TinyPage({Key? key}) : super(key: key);

  @override
  State<TinyPage> createState() => _TinyPageState();
}

class _TinyPageState extends State<TinyPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Sayfa bir ", style: TextStyle(fontSize: 30, color: Colors.black54),),
    );
  }
}
