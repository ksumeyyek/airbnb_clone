import 'package:flutter/material.dart';

class IslandsPage extends StatefulWidget {
  const IslandsPage({Key? key}) : super(key: key);

  @override
  State<IslandsPage> createState() => _IslandsPageState();
}

class _IslandsPageState extends State<IslandsPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Sayfa bir ",style: TextStyle(fontSize: 30,color: Colors.black54),),
    );
  }
}
