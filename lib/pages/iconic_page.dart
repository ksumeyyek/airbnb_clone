import 'package:flutter/material.dart';

class IconicPage extends StatefulWidget {
  const IconicPage({Key? key}) : super(key: key);

  @override
  State<IconicPage> createState() => _IconicPageState();
}

class _IconicPageState extends State<IconicPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Sayfa bir ",style: TextStyle(fontSize: 30,color: Colors.black54),),
    );
  }
}
