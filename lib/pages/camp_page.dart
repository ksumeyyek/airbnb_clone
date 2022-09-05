import 'package:flutter/material.dart';

class CampPage extends StatefulWidget {
  const CampPage({Key? key}) : super(key: key);

  @override
  State<CampPage> createState() => _CampPageState();
}

class _CampPageState extends State<CampPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Sayfa bir ",style: TextStyle(fontSize: 30,color: Colors.black54),),
    );
  }
}
