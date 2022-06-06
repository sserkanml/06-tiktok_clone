import 'package:flutter/material.dart';

class CommentsPage extends StatefulWidget {
  const CommentsPage({ Key? key }) : super(key: key);

  @override
  _CommentsPageState createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("commnets page")),
    );
  }
}