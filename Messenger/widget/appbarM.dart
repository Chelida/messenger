import 'package:flutter/material.dart';

Widget appbarM(String title, IconData _icon1, IconData _icon2) {
  return AppBar(
    elevation: 0,
    leading: Padding(
      padding: const EdgeInsets.all(10.0),
      child: CircleAvatar(
        
        backgroundImage: AssetImage("images/fille.jpg"),
      ),
    ),
    backgroundColor: Colors.white,
    title: Text(title,style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
           backgroundColor: Colors.black12,
          maxRadius: 16,
          child: IconButton(icon: Icon(_icon1,size: 16,color: Colors.black,), onPressed: () {})),
      ),
    
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          backgroundColor: Colors.black12,
          maxRadius: 16,
          child: IconButton(icon: Icon(_icon2,size: 16,color: Colors.black,), onPressed: () {})),
      )
    ],
  );
}
