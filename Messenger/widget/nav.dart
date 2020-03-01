import '../screen/contact.dart';
import '../screen/decouverts.dart';
import '../screen/discutions.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter/material.dart';

class Nav  extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int pageIndex = 0;
  void onTapped(int index){
setState(() {
  pageIndex=index;
});
  }
  List viewList =[
    Discutions(),
    Contacts(),
    Decouverts(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: pageIndex,
        onTap: onTapped,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.black,
        items:<BottomNavigationBarItem>[
          BottomNavigationBarItem(title: Text("Discutions"),icon: Icon(FontAwesomeIcons.solidComment),),
          BottomNavigationBarItem(title: Text("Contacts"),icon: Icon(Icons.people),),
          BottomNavigationBarItem(title: Text("Decouverts"),icon: Icon(FontAwesomeIcons.solidCompass),),
        ],
      ),
      body:viewList.elementAt(pageIndex) ,
    );
  }
}