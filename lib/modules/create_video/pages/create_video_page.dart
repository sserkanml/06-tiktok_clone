import 'package:flutter/material.dart';

class CreateVideoPage extends StatefulWidget {
  const CreateVideoPage({ Key? key }) : super(key: key);

  @override
  _CreateVideoPageState createState() => _CreateVideoPageState();
}

class _CreateVideoPageState extends State<CreateVideoPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("create video")),
    );
  }
}