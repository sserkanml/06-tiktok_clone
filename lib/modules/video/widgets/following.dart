import 'package:flutter/material.dart';

class Following extends StatelessWidget {
const Following({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
          Text("Following".toUpperCase(),style: TextStyle(color: Colors.white.withOpacity(.8),fontSize: 14),),
          SizedBox(width: 5,),
          Text(" | ",style: TextStyle(color: Colors.white.withOpacity(.5)),),
          SizedBox(width: 4,),
          Text("For u ".toUpperCase(),style: TextStyle(color: Colors.white.withOpacity(.5),fontSize: 14),)
        ],),
      ),
    );
  }
}